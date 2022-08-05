import 'package:firebase_auth/firebase_auth.dart';

class AuthRepository {
  final _firebaseAuth = FirebaseAuth.instance;

  Future<void> singUp({required String email, required String password}) async {
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: "barry.allen@example.com", password: "SuperSecretPassword!");
    } on FirebaseAuthException catch (error) {
      if (error.code == 'weak-password') {
        throw Exception("A senha inserida é muito fraca mano, troca isso ai!");
      } else if (error.code == 'email-already-in-use') {
        throw Exception("Email já existe tiozão, usa oto");
      }
      print(error.code);
    } catch (error) {
      throw Exception(error.toString());
    }
  }

  Future<void> signIn({required String email, required String password}) async {
    try {
      await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
    } on FirebaseAuthException catch (error) {
      if (error.code == 'user-not-found') {
        throw Exception('Usuario não encontrado!');
      } else if (error.code == 'wrong-password') {
        throw Exception('Senha errada manito');
      }
    }
  }

  Future<void> signOut() async {
    try {
      await _firebaseAuth.signOut();
    } catch (e) {
      throw Exception(e);
    }
  }
}
