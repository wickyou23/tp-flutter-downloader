abstract class BaseUseCase {}

abstract interface class StreamUseCase<Input, Output> {
  Stream<Output> executeStream(Input input);
}

abstract interface class FutureUseCase<Input, Output> {
  Future<Output> execute(Input input);
}
