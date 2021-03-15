import java.security.MessageDigest;
import java.util.Arrays;
import javax.crypto.Cipher;
import javax.crypto.spec.SecretKeySpec;

class SolverCryptex{
	public static byte[] p = {-114, 62, 98, 26, 54, -7, -59, -47, 55, 88, 18, -1, -99, 116, -51, 62};
    public static byte[] q = {-84, 25, 77, -101, -53, -124, -100, 61, 74, 102, 50, -11, -24, 62, -54, -71};
    public static byte[] r = {11, -35, 55, 10, 62, 79, 125, 62, -28, 115, 77, 4, 73, 0, 11, 121, -126, 85, -83, 109, 1, -98, 35, -68, -4, -122, 14, 110, -28, 111, 22, -125};
	
	public static void main(String[] args) {
			byte[] bArr2 = p;
			byte[] bArr;
            SecretKeySpec secretKeySpec = new SecretKeySpec(bArr2, 0, bArr2.length, "AES");	
            try{
            	MessageDigest instance = MessageDigest.getInstance("SHA-256");
            	instance.reset();
            	byte[] digest = r;
            	try{
            		Cipher instance2 = Cipher.getInstance("AES/ECB/NoPadding");
                	instance2.init(Cipher.DECRYPT_MODE, secretKeySpec);
                	bArr = instance2.doFinal(digest);
                	StringBuilder sb = new StringBuilder();
                	for (byte b : bArr) {
     				   sb.append(String.format("%02x", b));
    				}
    				System.out.println(sb.toString());
            	}
            	catch(Exception e2){
            		System.out.println("asd");
            	}
            }
            catch(Exception e){
            	System.out.println("asd");
            }
	}
}