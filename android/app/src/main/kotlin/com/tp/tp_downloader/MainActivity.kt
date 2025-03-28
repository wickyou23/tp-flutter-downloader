package com.tp.tp_downloader

import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel
import android.content.Context
import android.content.Intent
import android.net.Uri
import android.provider.Settings
import java.io.File
import android.util.Log
import android.app.DownloadManager
import android.os.Environment
import android.os.Build
import android.provider.MediaStore

class MainActivity: FlutterActivity() {
    private val CHANNEL = "app_channel"

    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)

        MethodChannel(flutterEngine.dartExecutor.binaryMessenger, CHANNEL).setMethodCallHandler { 
            call, result ->
            when {
                call.method == "openVideoGallery" -> {
                    openVideoGallery(this)
                    result.success(null)
                }
                call.method == "openDowloadFolder" -> {
                    openDowloadFolder(this)
                    result.success(null)
                }
                else -> {
                    result.notImplemented()
                }
            }
        }
    }

    private fun openDowloadFolder(context: Context) {
        if (isSamSumgDevice()) {
            try {
                val intent = Intent("samsung.myfiles.intent.action.LAUNCH_MY_FILES").apply {
                    setPackage("com.sec.android.app.myfiles") 
                    putExtra("samsung.myfiles.intent.extra.START_PATH", getDownloadsFile().path)
                }
    
                context.startActivity(intent)
            } catch (e: Exception) {
                context.startActivity(Intent(DownloadManager.ACTION_VIEW_DOWNLOADS))
            }
            
        } else {
            context.startActivity(Intent(DownloadManager.ACTION_VIEW_DOWNLOADS))
        }
    }

    private fun openVideoGallery(context: Context,) {
        val intent = Intent(Intent.ACTION_VIEW).apply {
            setDataAndType(MediaStore.Video.Media.EXTERNAL_CONTENT_URI, "video/*")
            flags = Intent.FLAG_ACTIVITY_NEW_TASK
        }
    
        context.startActivity(intent)
    }

    private fun isSamSumgDevice(): Boolean {
        val manufacturer = Build.MANUFACTURER;
        if (manufacturer != null) {
            return manufacturer.toLowerCase().contains("samsung");
        }

        return false;
    }

    public fun getDownloadsFile(): File {
        return Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOWNLOADS);
    }
}