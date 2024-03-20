// ignore_for_file: public_member_api_docs, sort_constructors_first
class CustomError {
  final String errMsg;
  CustomError({
    this.errMsg = '',
  });

  @override
  String toString() => 'CustomError(errMsg: $errMsg)';

  @override
  bool operator ==(covariant CustomError other) {
    if (identical(this, other)) return true;
  
    return 
      other.errMsg == errMsg;
  }

  @override
  int get hashCode => errMsg.hashCode;
}
