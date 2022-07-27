class SolverMySimpleLogin{
     public static String x(String s, String k) {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < s.length(); i++) {
            sb.append((char) (s.charAt(i) ^ k.charAt(i % k.length())));
        }
        return sb.toString();
    }
    public static String r(String s, String c) {
        return s.replace(c, "");
    }
    public static void main(String[] args) {
        String e = ">49s?#kjllw>ijvnra;;i>=kuki`ta;`iirj9::xtm;<rij%";
        System.out.println(x(r(r(r(r(r(r(r(e, "r"), "s"), "t"), "u"), "v"), "w"), "x"), "X"));
    }
}
