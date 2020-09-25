.class public Lo/setQueryCompleteIfExists;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/calcCompleteChild;
.implements Lo/isQueryComplete;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/setQueryCompleteIfExists$onMessageChannelReady;,
        Lo/setQueryCompleteIfExists$onPostMessage;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u00e8\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0017\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0001\n\u0002\u0008\u0013\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0008\n\u0002\u0008\u0010\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0012\u0008\u0017\u0018\u00002\u00020X2\u00020\u00172\u00030\u0081\u00012\u00030\u00c5\u0001:\u0006\u00d4\u0001\u00d5\u0001\u00d6\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J+\u0010\u000b\u001a\u00020\u00012\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u00072\n\u0010\n\u001a\u0006\u0012\u0002\u0008\u00030\tH\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ%\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u000e\u001a\u00020\r2\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000fH\u0002\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u0019\u0010\u0015\u001a\u00020\u00112\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0005H\u0014\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u0015\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u0018\u001a\u00020\u0017\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\u0015\u0010\u001e\u001a\u0004\u0018\u00010\u0005H\u0080@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ\u0015\u0010\u001f\u001a\u0004\u0018\u00010\u0005H\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u001f\u0010\u001dJ\u0019\u0010!\u001a\u00020\u00012\u0008\u0010 \u001a\u0004\u0018\u00010\rH\u0017\u00a2\u0006\u0004\u0008!\u0010\"J\u001f\u0010!\u001a\u00020\u00112\u000e\u0010 \u001a\n\u0018\u00010#j\u0004\u0018\u0001`$H\u0016\u00a2\u0006\u0004\u0008!\u0010%J\u0017\u0010&\u001a\u00020\u00012\u0008\u0010 \u001a\u0004\u0018\u00010\r\u00a2\u0006\u0004\u0008&\u0010\"J\u0019\u0010)\u001a\u00020\u00012\u0008\u0010 \u001a\u0004\u0018\u00010\u0005H\u0000\u00a2\u0006\u0004\u0008\'\u0010(J\u0017\u0010*\u001a\u00020\u00112\u0006\u0010 \u001a\u00020\rH\u0016\u00a2\u0006\u0004\u0008*\u0010+J\u001b\u0010,\u001a\u0004\u0018\u00010\u00052\u0008\u0010 \u001a\u0004\u0018\u00010\u0005H\u0002\u00a2\u0006\u0004\u0008,\u0010-J\u0017\u0010.\u001a\u00020\u00012\u0006\u0010 \u001a\u00020\rH\u0002\u00a2\u0006\u0004\u0008.\u0010\"J\u000f\u00100\u001a\u00020/H\u0014\u00a2\u0006\u0004\u00080\u00101J\u0017\u00102\u001a\u00020\u00012\u0006\u0010 \u001a\u00020\rH\u0016\u00a2\u0006\u0004\u00082\u0010\"J!\u00105\u001a\u00020\u00112\u0006\u0010\u0014\u001a\u0002032\u0008\u00104\u001a\u0004\u0018\u00010\u0005H\u0002\u00a2\u0006\u0004\u00085\u00106J)\u0010;\u001a\u00020\u00112\u0006\u0010\u0014\u001a\u0002072\u0006\u00109\u001a\u0002082\u0008\u0010:\u001a\u0004\u0018\u00010\u0005H\u0002\u00a2\u0006\u0004\u0008;\u0010<J\u0019\u0010=\u001a\u00020\r2\u0008\u0010 \u001a\u0004\u0018\u00010\u0005H\u0002\u00a2\u0006\u0004\u0008=\u0010>J(\u0010C\u001a\u00020@2\n\u0008\u0002\u0010?\u001a\u0004\u0018\u00010/2\n\u0008\u0002\u0010 \u001a\u0004\u0018\u00010\rH\u0080\u0008\u00a2\u0006\u0004\u0008A\u0010BJ#\u0010D\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0014\u001a\u0002072\u0008\u0010:\u001a\u0004\u0018\u00010\u0005H\u0002\u00a2\u0006\u0004\u0008D\u0010EJ\u0019\u0010F\u001a\u0004\u0018\u0001082\u0006\u0010\u0014\u001a\u000203H\u0002\u00a2\u0006\u0004\u0008F\u0010GJ\u0011\u0010H\u001a\u00060#j\u0002`$\u00a2\u0006\u0004\u0008H\u0010IJ\u0013\u0010J\u001a\u00060#j\u0002`$H\u0016\u00a2\u0006\u0004\u0008J\u0010IJ\u0011\u0010M\u001a\u0004\u0018\u00010\u0005H\u0000\u00a2\u0006\u0004\u0008K\u0010LJ\u000f\u0010N\u001a\u0004\u0018\u00010\r\u00a2\u0006\u0004\u0008N\u0010OJ\'\u0010P\u001a\u0004\u0018\u00010\r2\u0006\u0010\u0014\u001a\u0002072\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000fH\u0002\u00a2\u0006\u0004\u0008P\u0010QJ\u0019\u0010R\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0014\u001a\u000203H\u0002\u00a2\u0006\u0004\u0008R\u0010SJ\u0017\u0010U\u001a\u00020\u00012\u0006\u0010T\u001a\u00020\rH\u0014\u00a2\u0006\u0004\u0008U\u0010\"J\u0017\u0010W\u001a\u00020\u00112\u0006\u0010T\u001a\u00020\rH\u0010\u00a2\u0006\u0004\u0008V\u0010+J\u0019\u0010\\\u001a\u00020\u00112\u0008\u0010Y\u001a\u0004\u0018\u00010XH\u0000\u00a2\u0006\u0004\u0008Z\u0010[JF\u0010e\u001a\u00020d2\u0006\u0010]\u001a\u00020\u00012\u0006\u0010^\u001a\u00020\u00012\'\u0010c\u001a#\u0012\u0015\u0012\u0013\u0018\u00010\r\u00a2\u0006\u000c\u0008`\u0012\u0008\u0008a\u0012\u0004\u0008\u0008( \u0012\u0004\u0012\u00020\u00110_j\u0002`b\u00a2\u0006\u0004\u0008e\u0010fJ6\u0010e\u001a\u00020d2\'\u0010c\u001a#\u0012\u0015\u0012\u0013\u0018\u00010\r\u00a2\u0006\u000c\u0008`\u0012\u0008\u0008a\u0012\u0004\u0008\u0008( \u0012\u0004\u0012\u00020\u00110_j\u0002`b\u00a2\u0006\u0004\u0008e\u0010gJ\u0013\u0010h\u001a\u00020\u0011H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008h\u0010\u001dJ\u000f\u0010i\u001a\u00020\u0001H\u0002\u00a2\u0006\u0004\u0008i\u0010jJ\u0013\u0010k\u001a\u00020\u0011H\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008k\u0010\u001dJ&\u0010n\u001a\u00020m2\u0014\u0010l\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0012\u0004\u0012\u00020\u00110_H\u0082\u0008\u00a2\u0006\u0004\u0008n\u0010oJ\u001b\u0010p\u001a\u0004\u0018\u00010\u00052\u0008\u0010 \u001a\u0004\u0018\u00010\u0005H\u0002\u00a2\u0006\u0004\u0008p\u0010-J\u0019\u0010r\u001a\u00020\u00012\u0008\u0010:\u001a\u0004\u0018\u00010\u0005H\u0000\u00a2\u0006\u0004\u0008q\u0010(J\u001b\u0010t\u001a\u0004\u0018\u00010\u00052\u0008\u0010:\u001a\u0004\u0018\u00010\u0005H\u0000\u00a2\u0006\u0004\u0008s\u0010-JD\u0010u\u001a\u0006\u0012\u0002\u0008\u00030\t2\'\u0010c\u001a#\u0012\u0015\u0012\u0013\u0018\u00010\r\u00a2\u0006\u000c\u0008`\u0012\u0008\u0008a\u0012\u0004\u0008\u0008( \u0012\u0004\u0012\u00020\u00110_j\u0002`b2\u0006\u0010]\u001a\u00020\u0001H\u0002\u00a2\u0006\u0004\u0008u\u0010vJ\u000f\u0010x\u001a\u00020/H\u0010\u00a2\u0006\u0004\u0008w\u00101J\u001f\u0010y\u001a\u00020\u00112\u0006\u0010\u0008\u001a\u00020\u00072\u0006\u0010 \u001a\u00020\rH\u0002\u00a2\u0006\u0004\u0008y\u0010zJ2\u0010|\u001a\u00020\u0011\"\u000e\u0008\u0000\u0010{\u0018\u0001*\u0006\u0012\u0002\u0008\u00030\t2\u0006\u0010\u0008\u001a\u00020\u00072\u0008\u0010 \u001a\u0004\u0018\u00010\rH\u0082\u0008\u00a2\u0006\u0004\u0008|\u0010zJ\u0019\u0010]\u001a\u00020\u00112\u0008\u0010 \u001a\u0004\u0018\u00010\rH\u0014\u00a2\u0006\u0004\u0008]\u0010+J\u0019\u0010}\u001a\u00020\u00112\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0005H\u0014\u00a2\u0006\u0004\u0008}\u0010\u0016J\u0010\u0010\u0080\u0001\u001a\u00020\u0011H\u0010\u00a2\u0006\u0004\u0008~\u0010\u007fJ\u001a\u0010\u0083\u0001\u001a\u00020\u00112\u0008\u0010\u0082\u0001\u001a\u00030\u0081\u0001\u00a2\u0006\u0006\u0008\u0083\u0001\u0010\u0084\u0001J\u001b\u0010\u0086\u0001\u001a\u00020\u00112\u0007\u0010\u0014\u001a\u00030\u0085\u0001H\u0002\u00a2\u0006\u0006\u0008\u0086\u0001\u0010\u0087\u0001J\u001e\u0010\u0088\u0001\u001a\u00020\u00112\n\u0010\u0014\u001a\u0006\u0012\u0002\u0008\u00030\tH\u0002\u00a2\u0006\u0006\u0008\u0088\u0001\u0010\u0089\u0001JI\u0010\u008e\u0001\u001a\u00020\u0011\"\u0005\u0008\u0000\u0010\u008a\u00012\u000e\u0010\u008c\u0001\u001a\t\u0012\u0004\u0012\u00028\u00000\u008b\u00012\u001d\u0010l\u001a\u0019\u0008\u0001\u0012\u000b\u0012\t\u0012\u0004\u0012\u00028\u00000\u008d\u0001\u0012\u0006\u0012\u0004\u0018\u00010\u00050_\u00f8\u0001\u0000\u00a2\u0006\u0006\u0008\u008e\u0001\u0010\u008f\u0001JX\u0010\u0093\u0001\u001a\u00020\u0011\"\u0004\u0008\u0000\u0010{\"\u0005\u0008\u0001\u0010\u008a\u00012\u000e\u0010\u008c\u0001\u001a\t\u0012\u0004\u0012\u00028\u00010\u008b\u00012$\u0010l\u001a \u0008\u0001\u0012\u0004\u0012\u00028\u0000\u0012\u000b\u0012\t\u0012\u0004\u0012\u00028\u00010\u008d\u0001\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u0090\u0001H\u0000\u00f8\u0001\u0000\u00a2\u0006\u0006\u0008\u0091\u0001\u0010\u0092\u0001J\u001e\u0010\u0095\u0001\u001a\u00020\u00112\n\u0010\n\u001a\u0006\u0012\u0002\u0008\u00030\tH\u0000\u00a2\u0006\u0006\u0008\u0094\u0001\u0010\u0089\u0001JX\u0010\u0097\u0001\u001a\u00020\u0011\"\u0004\u0008\u0000\u0010{\"\u0005\u0008\u0001\u0010\u008a\u00012\u000e\u0010\u008c\u0001\u001a\t\u0012\u0004\u0012\u00028\u00010\u008b\u00012$\u0010l\u001a \u0008\u0001\u0012\u0004\u0012\u00028\u0000\u0012\u000b\u0012\t\u0012\u0004\u0012\u00028\u00010\u008d\u0001\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u0090\u0001H\u0000\u00f8\u0001\u0000\u00a2\u0006\u0006\u0008\u0096\u0001\u0010\u0092\u0001J\u000f\u0010\u0098\u0001\u001a\u00020\u0001\u00a2\u0006\u0005\u0008\u0098\u0001\u0010jJ\u001d\u0010\u009a\u0001\u001a\u00030\u0099\u00012\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0005H\u0002\u00a2\u0006\u0006\u0008\u009a\u0001\u0010\u009b\u0001J\u001c\u0010\u009c\u0001\u001a\u00020/2\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0005H\u0002\u00a2\u0006\u0006\u0008\u009c\u0001\u0010\u009d\u0001J\u0011\u0010\u009e\u0001\u001a\u00020/H\u0007\u00a2\u0006\u0005\u0008\u009e\u0001\u00101J\u0011\u0010\u009f\u0001\u001a\u00020/H\u0016\u00a2\u0006\u0005\u0008\u009f\u0001\u00101J$\u0010\u00a0\u0001\u001a\u00020\u00012\u0006\u0010\u0014\u001a\u0002032\u0008\u00104\u001a\u0004\u0018\u00010\u0005H\u0002\u00a2\u0006\u0006\u0008\u00a0\u0001\u0010\u00a1\u0001J\"\u0010\u00a2\u0001\u001a\u00020\u00012\u0006\u0010\u0014\u001a\u0002032\u0006\u0010\u000e\u001a\u00020\rH\u0002\u00a2\u0006\u0006\u0008\u00a2\u0001\u0010\u00a3\u0001J(\u0010\u00a4\u0001\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u00052\u0008\u0010:\u001a\u0004\u0018\u00010\u0005H\u0002\u00a2\u0006\u0006\u0008\u00a4\u0001\u0010\u00a5\u0001J&\u0010\u00a6\u0001\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0014\u001a\u0002032\u0008\u0010:\u001a\u0004\u0018\u00010\u0005H\u0002\u00a2\u0006\u0006\u0008\u00a6\u0001\u0010\u00a7\u0001J-\u0010\u00a8\u0001\u001a\u00020\u00012\u0006\u0010\u0014\u001a\u0002072\u0006\u0010\u0018\u001a\u0002082\u0008\u0010:\u001a\u0004\u0018\u00010\u0005H\u0082\u0010\u00a2\u0006\u0006\u0008\u00a8\u0001\u0010\u00a9\u0001J\u0019\u0010\u00ab\u0001\u001a\u0004\u0018\u000108*\u00030\u00aa\u0001H\u0002\u00a2\u0006\u0006\u0008\u00ab\u0001\u0010\u00ac\u0001J\u001f\u0010\u00ad\u0001\u001a\u00020\u0011*\u00020\u00072\u0008\u0010 \u001a\u0004\u0018\u00010\rH\u0002\u00a2\u0006\u0005\u0008\u00ad\u0001\u0010zJ&\u0010\u00ae\u0001\u001a\u00060#j\u0002`$*\u00020\r2\n\u0008\u0002\u0010?\u001a\u0004\u0018\u00010/H\u0004\u00a2\u0006\u0006\u0008\u00ae\u0001\u0010\u00af\u0001R\u001d\u0010\u00b3\u0001\u001a\t\u0012\u0004\u0012\u00020X0\u00b0\u00018F@\u0006\u00a2\u0006\u0008\u001a\u0006\u0008\u00b1\u0001\u0010\u00b2\u0001R\u001a\u0010\u00b5\u0001\u001a\u0004\u0018\u00010\r8D@\u0004X\u0084\u0004\u00a2\u0006\u0007\u001a\u0005\u0008\u00b4\u0001\u0010OR\u0018\u0010\u00b7\u0001\u001a\u00020\u00018D@\u0004X\u0084\u0004\u00a2\u0006\u0007\u001a\u0005\u0008\u00b6\u0001\u0010jR\u0018\u0010\u00b9\u0001\u001a\u00020\u00018P@\u0010X\u0090\u0004\u00a2\u0006\u0007\u001a\u0005\u0008\u00b8\u0001\u0010jR\u0018\u0010\u00ba\u0001\u001a\u00020\u00018V@\u0016X\u0096\u0004\u00a2\u0006\u0007\u001a\u0005\u0008\u00ba\u0001\u0010jR\u0015\u0010\u00bb\u0001\u001a\u00020\u00018F@\u0006\u00a2\u0006\u0007\u001a\u0005\u0008\u00bb\u0001\u0010jR\u0015\u0010\u00bc\u0001\u001a\u00020\u00018F@\u0006\u00a2\u0006\u0007\u001a\u0005\u0008\u00bc\u0001\u0010jR\u0015\u0010\u00bd\u0001\u001a\u00020\u00018F@\u0006\u00a2\u0006\u0007\u001a\u0005\u0008\u00bd\u0001\u0010jR\u0018\u0010\u00be\u0001\u001a\u00020\u00018T@\u0014X\u0094\u0004\u00a2\u0006\u0007\u001a\u0005\u0008\u00be\u0001\u0010jR\u001b\u0010\u00c2\u0001\u001a\u0007\u0012\u0002\u0008\u00030\u00bf\u00018F@\u0006\u00a2\u0006\u0008\u001a\u0006\u0008\u00c0\u0001\u0010\u00c1\u0001R\u0018\u0010\u00c4\u0001\u001a\u00020\u00018P@\u0010X\u0090\u0004\u00a2\u0006\u0007\u001a\u0005\u0008\u00c3\u0001\u0010jR\u0017\u0010\u00c8\u0001\u001a\u00030\u00c5\u00018F@\u0006\u00a2\u0006\u0008\u001a\u0006\u0008\u00c6\u0001\u0010\u00c7\u0001R.\u0010\u00ce\u0001\u001a\u0004\u0018\u00010\u00192\t\u0010\u00c9\u0001\u001a\u0004\u0018\u00010\u00198@@@X\u0080\u000e\u00a2\u0006\u0010\u001a\u0006\u0008\u00ca\u0001\u0010\u00cb\u0001\"\u0006\u0008\u00cc\u0001\u0010\u00cd\u0001R\u0019\u0010\u0014\u001a\u0004\u0018\u00010\u00058@@\u0000X\u0080\u0004\u00a2\u0006\u0007\u001a\u0005\u0008\u00cf\u0001\u0010LR \u0010\u00d1\u0001\u001a\u0004\u0018\u00010\r*\u0004\u0018\u00010\u00058B@\u0002X\u0082\u0004\u00a2\u0006\u0007\u001a\u0005\u0008\u00d0\u0001\u0010>R\u001d\u0010\u00d2\u0001\u001a\u00020\u0001*\u0002038B@\u0002X\u0082\u0004\u00a2\u0006\u0008\u001a\u0006\u0008\u00d2\u0001\u0010\u00d3\u0001\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u00d7\u0001"
    }
    d2 = {
        "Lkotlinx/coroutines/JobSupport;",
        "",
        "active",
        "<init>",
        "(Z)V",
        "",
        "expect",
        "Lkotlinx/coroutines/NodeList;",
        "list",
        "Lkotlinx/coroutines/JobNode;",
        "node",
        "addLastAtomic",
        "(Ljava/lang/Object;Lkotlinx/coroutines/NodeList;Lkotlinx/coroutines/JobNode;)Z",
        "",
        "rootCause",
        "",
        "exceptions",
        "",
        "addSuppressedExceptions",
        "(Ljava/lang/Throwable;Ljava/util/List;)V",
        "state",
        "afterCompletion",
        "(Ljava/lang/Object;)V",
        "Lkotlinx/coroutines/ChildJob;",
        "child",
        "Lkotlinx/coroutines/ChildHandle;",
        "attachChild",
        "(Lkotlinx/coroutines/ChildJob;)Lkotlinx/coroutines/ChildHandle;",
        "awaitInternal$kotlinx_coroutines_core",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "awaitInternal",
        "awaitSuspend",
        "cause",
        "cancel",
        "(Ljava/lang/Throwable;)Z",
        "Ljava/util/concurrent/CancellationException;",
        "Lkotlinx/coroutines/CancellationException;",
        "(Ljava/util/concurrent/CancellationException;)V",
        "cancelCoroutine",
        "cancelImpl$kotlinx_coroutines_core",
        "(Ljava/lang/Object;)Z",
        "cancelImpl",
        "cancelInternal",
        "(Ljava/lang/Throwable;)V",
        "cancelMakeCompleting",
        "(Ljava/lang/Object;)Ljava/lang/Object;",
        "cancelParent",
        "",
        "cancellationExceptionMessage",
        "()Ljava/lang/String;",
        "childCancelled",
        "Lkotlinx/coroutines/Incomplete;",
        "update",
        "completeStateFinalization",
        "(Lkotlinx/coroutines/Incomplete;Ljava/lang/Object;)V",
        "Lkotlinx/coroutines/JobSupport$Finishing;",
        "Lkotlinx/coroutines/ChildHandleNode;",
        "lastChild",
        "proposedUpdate",
        "continueCompleting",
        "(Lkotlinx/coroutines/JobSupport$Finishing;Lkotlinx/coroutines/ChildHandleNode;Ljava/lang/Object;)V",
        "createCauseException",
        "(Ljava/lang/Object;)Ljava/lang/Throwable;",
        "message",
        "Lkotlinx/coroutines/JobCancellationException;",
        "defaultCancellationException$kotlinx_coroutines_core",
        "(Ljava/lang/String;Ljava/lang/Throwable;)Lkotlinx/coroutines/JobCancellationException;",
        "defaultCancellationException",
        "finalizeFinishingState",
        "(Lkotlinx/coroutines/JobSupport$Finishing;Ljava/lang/Object;)Ljava/lang/Object;",
        "firstChild",
        "(Lkotlinx/coroutines/Incomplete;)Lkotlinx/coroutines/ChildHandleNode;",
        "getCancellationException",
        "()Ljava/util/concurrent/CancellationException;",
        "getChildJobCancellationCause",
        "getCompletedInternal$kotlinx_coroutines_core",
        "()Ljava/lang/Object;",
        "getCompletedInternal",
        "getCompletionExceptionOrNull",
        "()Ljava/lang/Throwable;",
        "getFinalRootCause",
        "(Lkotlinx/coroutines/JobSupport$Finishing;Ljava/util/List;)Ljava/lang/Throwable;",
        "getOrPromoteCancellingList",
        "(Lkotlinx/coroutines/Incomplete;)Lkotlinx/coroutines/NodeList;",
        "exception",
        "handleJobException",
        "handleOnCompletionException$kotlinx_coroutines_core",
        "handleOnCompletionException",
        "Lkotlinx/coroutines/Job;",
        "parent",
        "initParentJobInternal$kotlinx_coroutines_core",
        "(Lkotlinx/coroutines/Job;)V",
        "initParentJobInternal",
        "onCancelling",
        "invokeImmediately",
        "Lkotlin/Function1;",
        "Lkotlin/ParameterName;",
        "name",
        "Lkotlinx/coroutines/CompletionHandler;",
        "handler",
        "Lkotlinx/coroutines/DisposableHandle;",
        "invokeOnCompletion",
        "(ZZLkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/DisposableHandle;",
        "(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/DisposableHandle;",
        "join",
        "joinInternal",
        "()Z",
        "joinSuspend",
        "block",
        "",
        "loopOnState",
        "(Lkotlin/jvm/functions/Function1;)Ljava/lang/Void;",
        "makeCancelling",
        "makeCompleting$kotlinx_coroutines_core",
        "makeCompleting",
        "makeCompletingOnce$kotlinx_coroutines_core",
        "makeCompletingOnce",
        "makeNode",
        "(Lkotlin/jvm/functions/Function1;Z)Lkotlinx/coroutines/JobNode;",
        "nameString$kotlinx_coroutines_core",
        "nameString",
        "notifyCancelling",
        "(Lkotlinx/coroutines/NodeList;Ljava/lang/Throwable;)V",
        "T",
        "notifyHandlers",
        "onCompletionInternal",
        "onStartInternal$kotlinx_coroutines_core",
        "()V",
        "onStartInternal",
        "Lkotlinx/coroutines/ParentJob;",
        "parentJob",
        "parentCancelled",
        "(Lkotlinx/coroutines/ParentJob;)V",
        "Lkotlinx/coroutines/Empty;",
        "promoteEmptyToNodeList",
        "(Lkotlinx/coroutines/Empty;)V",
        "promoteSingleToNodeList",
        "(Lkotlinx/coroutines/JobNode;)V",
        "R",
        "Lkotlinx/coroutines/selects/SelectInstance;",
        "select",
        "Lkotlin/coroutines/Continuation;",
        "registerSelectClause0",
        "(Lkotlinx/coroutines/selects/SelectInstance;Lkotlin/jvm/functions/Function1;)V",
        "Lkotlin/Function2;",
        "registerSelectClause1Internal$kotlinx_coroutines_core",
        "(Lkotlinx/coroutines/selects/SelectInstance;Lkotlin/jvm/functions/Function2;)V",
        "registerSelectClause1Internal",
        "removeNode$kotlinx_coroutines_core",
        "removeNode",
        "selectAwaitCompletion$kotlinx_coroutines_core",
        "selectAwaitCompletion",
        "start",
        "",
        "startInternal",
        "(Ljava/lang/Object;)I",
        "stateString",
        "(Ljava/lang/Object;)Ljava/lang/String;",
        "toDebugString",
        "toString",
        "tryFinalizeSimpleState",
        "(Lkotlinx/coroutines/Incomplete;Ljava/lang/Object;)Z",
        "tryMakeCancelling",
        "(Lkotlinx/coroutines/Incomplete;Ljava/lang/Throwable;)Z",
        "tryMakeCompleting",
        "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;",
        "tryMakeCompletingSlowPath",
        "(Lkotlinx/coroutines/Incomplete;Ljava/lang/Object;)Ljava/lang/Object;",
        "tryWaitForChild",
        "(Lkotlinx/coroutines/JobSupport$Finishing;Lkotlinx/coroutines/ChildHandleNode;Ljava/lang/Object;)Z",
        "Lkotlinx/coroutines/internal/LockFreeLinkedListNode;",
        "nextChild",
        "(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;)Lkotlinx/coroutines/ChildHandleNode;",
        "notifyCompletion",
        "toCancellationException",
        "(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/util/concurrent/CancellationException;",
        "Lkotlin/sequences/Sequence;",
        "getChildren",
        "()Lkotlin/sequences/Sequence;",
        "children",
        "getCompletionCause",
        "completionCause",
        "getCompletionCauseHandled",
        "completionCauseHandled",
        "getHandlesException$kotlinx_coroutines_core",
        "handlesException",
        "isActive",
        "isCancelled",
        "isCompleted",
        "isCompletedExceptionally",
        "isScopedCoroutine",
        "Lkotlin/coroutines/CoroutineContext$Key;",
        "getKey",
        "()Lkotlin/coroutines/CoroutineContext$Key;",
        "key",
        "getOnCancelComplete$kotlinx_coroutines_core",
        "onCancelComplete",
        "Lkotlinx/coroutines/selects/SelectClause0;",
        "getOnJoin",
        "()Lkotlinx/coroutines/selects/SelectClause0;",
        "onJoin",
        "value",
        "getParentHandle$kotlinx_coroutines_core",
        "()Lkotlinx/coroutines/ChildHandle;",
        "setParentHandle$kotlinx_coroutines_core",
        "(Lkotlinx/coroutines/ChildHandle;)V",
        "parentHandle",
        "getState$kotlinx_coroutines_core",
        "getExceptionOrNull",
        "exceptionOrNull",
        "isCancelling",
        "(Lkotlinx/coroutines/Incomplete;)Z",
        "AwaitContinuation",
        "ChildCompletion",
        "Finishing",
        "kotlinx-coroutines-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field static final extraCallback:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field private volatile _parentHandle:Ljava/lang/Object;

.field volatile _state:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lo/setQueryCompleteIfExists;

    const-class v1, Ljava/lang/Object;

    const-string v2, "_state"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lo/setQueryCompleteIfExists;->extraCallback:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 129
    invoke-static {}, Lo/findTrackedQuery;->extraCallback()Lo/prunesAnything;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {}, Lo/findTrackedQuery;->onTransact()Lo/prunesAnything;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lo/setQueryCompleteIfExists;->_state:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 131
    iput-object p1, p0, Lo/setQueryCompleteIfExists;->_parentHandle:Ljava/lang/Object;

    return-void
.end method

.method private final ICustomTabsCallback(Lo/setQueryCompleteIfExists$onMessageChannelReady;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 205
    invoke-static {}, Lo/getSnapshot;->onPostMessage()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    .line 9492
    :goto_0
    iget-object v0, p0, Lo/setQueryCompleteIfExists;->_state:Ljava/lang/Object;

    .line 8167
    instance-of v3, v0, Lo/stringHashV2Representation;

    if-nez v3, :cond_2

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_1

    goto :goto_2

    .line 205
    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 8168
    :cond_2
    check-cast v0, Lo/stringHashV2Representation;

    invoke-virtual {v0, p0}, Lo/stringHashV2Representation;->ICustomTabsCallback(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 206
    :cond_3
    :goto_2
    invoke-static {}, Lo/getSnapshot;->onPostMessage()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 11088
    iget-object v0, p1, Lo/setQueryCompleteIfExists$onMessageChannelReady;->_exceptionsHolder:Ljava/lang/Object;

    .line 10092
    invoke-static {}, Lo/findTrackedQuery;->onNavigationEvent()Lo/AppCompatDrawableManager;

    move-result-object v3

    if-ne v0, v3, :cond_4

    const/4 v0, 0x1

    goto :goto_3

    :cond_4
    const/4 v0, 0x0

    :goto_3
    xor-int/2addr v0, v2

    if-eqz v0, :cond_5

    goto :goto_4

    .line 206
    :cond_5
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 207
    :cond_6
    :goto_4
    invoke-static {}, Lo/getSnapshot;->onPostMessage()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 12078
    iget v0, p1, Lo/setQueryCompleteIfExists$onMessageChannelReady;->_isCompleting:I

    if-eqz v0, :cond_7

    goto :goto_5

    :cond_7
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 208
    :cond_8
    :goto_5
    instance-of v0, p2, Lo/evaluate;

    const/4 v3, 0x0

    if-nez v0, :cond_9

    move-object v0, v3

    goto :goto_6

    :cond_9
    move-object v0, p2

    :goto_6
    check-cast v0, Lo/evaluate;

    if-eqz v0, :cond_a

    iget-object v3, v0, Lo/evaluate;->onMessageChannelReady:Ljava/lang/Throwable;

    .line 1493
    :cond_a
    monitor-enter p1

    .line 13083
    :try_start_0
    iget-object v0, p1, Lo/setQueryCompleteIfExists$onMessageChannelReady;->_rootCause:Ljava/lang/Object;

    .line 14088
    iget-object v0, p1, Lo/setQueryCompleteIfExists$onMessageChannelReady;->_exceptionsHolder:Ljava/lang/Object;

    const/4 v4, 0x4

    if-nez v0, :cond_b

    .line 14135
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    goto :goto_7

    .line 13101
    :cond_b
    instance-of v5, v0, Ljava/lang/Throwable;

    if-eqz v5, :cond_c

    .line 15135
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 13101
    invoke-virtual {v5, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    move-object v0, v5

    goto :goto_7

    .line 13102
    :cond_c
    instance-of v4, v0, Ljava/util/ArrayList;

    if-eqz v4, :cond_18

    check-cast v0, Ljava/util/ArrayList;

    .line 16083
    :goto_7
    iget-object v4, p1, Lo/setQueryCompleteIfExists$onMessageChannelReady;->_rootCause:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Throwable;

    if-eqz v4, :cond_d

    .line 13106
    invoke-virtual {v0, v1, v4}, Ljava/util/AbstractList;->add(ILjava/lang/Object;)V

    :cond_d
    if-eqz v3, :cond_e

    .line 13107
    invoke-static {v3, v4}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    xor-int/2addr v4, v2

    if-eqz v4, :cond_e

    invoke-virtual {v0, v3}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 13108
    :cond_e
    invoke-static {}, Lo/findTrackedQuery;->onNavigationEvent()Lo/AppCompatDrawableManager;

    move-result-object v4

    .line 16089
    iput-object v4, p1, Lo/setQueryCompleteIfExists$onMessageChannelReady;->_exceptionsHolder:Ljava/lang/Object;

    .line 13109
    check-cast v0, Ljava/util/List;

    .line 214
    invoke-direct {p0, p1, v0}, Lo/setQueryCompleteIfExists;->onPostMessage(Lo/setQueryCompleteIfExists$onMessageChannelReady;Ljava/util/List;)Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_f

    .line 215
    invoke-static {v4, v0}, Lo/setQueryCompleteIfExists;->extraCallback(Ljava/lang/Throwable;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 216
    :cond_f
    monitor-exit p1

    if-nez v4, :cond_10

    goto :goto_8

    :cond_10
    if-ne v4, v3, :cond_11

    goto :goto_8

    .line 225
    :cond_11
    new-instance p2, Lo/evaluate;

    invoke-direct {p2, v4}, Lo/evaluate;-><init>(Ljava/lang/Throwable;)V

    :goto_8
    if-eqz v4, :cond_15

    .line 229
    invoke-direct {p0, v4}, Lo/setQueryCompleteIfExists;->onNavigationEvent(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_13

    invoke-virtual {p0, v4}, Lo/setQueryCompleteIfExists;->extraCallback(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_9

    :cond_12
    const/4 v0, 0x0

    goto :goto_a

    :cond_13
    :goto_9
    const/4 v0, 0x1

    :goto_a
    if-eqz v0, :cond_15

    if-eqz p2, :cond_14

    .line 230
    move-object v0, p2

    check-cast v0, Lo/evaluate;

    .line 17036
    sget-object v3, Lo/evaluate;->extraCallback:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v3, v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    goto :goto_b

    .line 230
    :cond_14
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type kotlinx.coroutines.CompletedExceptionally"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 235
    :cond_15
    :goto_b
    invoke-virtual {p0, p2}, Lo/setQueryCompleteIfExists;->ICustomTabsCallback(Ljava/lang/Object;)V

    .line 237
    sget-object v0, Lo/setQueryCompleteIfExists;->extraCallback:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {p2}, Lo/findTrackedQuery;->onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p0, p1, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 238
    invoke-static {}, Lo/getSnapshot;->onPostMessage()Z

    move-result v1

    if-eqz v1, :cond_17

    if-eqz v0, :cond_16

    goto :goto_c

    :cond_16
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 240
    :cond_17
    :goto_c
    check-cast p1, Lo/pruneAll;

    invoke-direct {p0, p1, p2}, Lo/setQueryCompleteIfExists;->onMessageChannelReady(Lo/pruneAll;Ljava/lang/Object;)V

    return-object p2

    :cond_18
    :try_start_1
    const-string p2, "State is "

    .line 13103
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p2

    .line 216
    monitor-exit p1

    throw p2
.end method

.method private final ICustomTabsCallback(Lo/setQueryActiveFlag;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/setQueryActiveFlag<",
            "*>;)V"
        }
    .end annotation

    .line 532
    new-instance v0, Lo/pruneOldQueries;

    invoke-direct {v0}, Lo/pruneOldQueries;-><init>()V

    check-cast v0, Lo/updateParents;

    invoke-virtual {p1, v0}, Lo/updateParents;->extraCallback(Lo/updateParents;)Z

    .line 40660
    :goto_0
    iget-object v0, p1, Lo/updateParents;->_next:Ljava/lang/Object;

    .line 40096
    instance-of v1, v0, Lo/stringHashV2Representation;

    if-nez v1, :cond_0

    .line 39102
    invoke-static {v0}, Lo/forEachAncestor;->extraCallback(Ljava/lang/Object;)Lo/updateParents;

    move-result-object v0

    .line 536
    sget-object v1, Lo/setQueryCompleteIfExists;->extraCallback:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, p0, p1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void

    .line 40097
    :cond_0
    check-cast v0, Lo/stringHashV2Representation;

    invoke-virtual {v0, p1}, Lo/stringHashV2Representation;->ICustomTabsCallback(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private final ICustomTabsCallback(Ljava/lang/Object;Lo/pruneOldQueries;Lo/setQueryActiveFlag;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lo/pruneOldQueries;",
            "Lo/setQueryActiveFlag<",
            "*>;)Z"
        }
    .end annotation

    .line 521
    check-cast p2, Lo/updateParents;

    .line 1559
    new-instance v0, Lo/setQueryCompleteIfExists$ICustomTabsCallback;

    check-cast p3, Lo/updateParents;

    invoke-direct {v0, p3, p0, p1}, Lo/setQueryCompleteIfExists$ICustomTabsCallback;-><init>(Lo/updateParents;Lo/setQueryCompleteIfExists;Ljava/lang/Object;)V

    check-cast v0, Lo/updateParents$ICustomTabsCallback;

    :goto_0
    const/4 p1, 0x0

    .line 38110
    invoke-virtual {p2, p1}, Lo/updateParents;->ICustomTabsCallback(Lo/stringHashV2Representation;)Lo/updateParents;

    move-result-object p1

    if-nez p1, :cond_0

    iget-object p1, p2, Lo/updateParents;->_prev:Ljava/lang/Object;

    check-cast p1, Lo/updateParents;

    invoke-static {p1}, Lo/updateParents;->onNavigationEvent(Lo/updateParents;)Lo/updateParents;

    move-result-object p1

    .line 1564
    :cond_0
    invoke-virtual {p1, p3, p2, v0}, Lo/updateParents;->ICustomTabsCallback(Lo/updateParents;Lo/updateParents;Lo/updateParents$ICustomTabsCallback;)I

    move-result p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1

    :cond_2
    return v1
.end method

.method private final ICustomTabsCallback$Stub(Ljava/lang/Object;)Ljava/lang/Throwable;
    .locals 3

    if-eqz p1, :cond_0

    .line 716
    instance-of v0, p1, Ljava/lang/Throwable;

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    check-cast p1, Ljava/lang/Throwable;

    return-object p1

    .line 1594
    :cond_1
    new-instance p1, Lkotlinx/coroutines/JobCancellationException;

    .line 47028
    invoke-virtual {p0}, Lo/setQueryCompleteIfExists;->asInterface()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 1594
    move-object v2, p0

    check-cast v2, Lo/assertValidTrackedQuery;

    invoke-direct {p1, v0, v1, v2}, Lkotlinx/coroutines/JobCancellationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lo/assertValidTrackedQuery;)V

    check-cast p1, Ljava/lang/Throwable;

    return-object p1

    :cond_2
    if-eqz p1, :cond_3

    .line 717
    check-cast p1, Lo/isQueryComplete;

    invoke-interface {p1}, Lo/isQueryComplete;->ICustomTabsService()Ljava/util/concurrent/CancellationException;

    move-result-object p1

    check-cast p1, Ljava/lang/Throwable;

    return-object p1

    :cond_3
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.ParentJob"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static asBinder(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    .line 1058
    instance-of v0, p0, Lo/setQueryCompleteIfExists$onMessageChannelReady;

    const-string v1, "Active"

    if-eqz v0, :cond_3

    .line 1059
    check-cast p0, Lo/setQueryCompleteIfExists$onMessageChannelReady;

    .line 52015
    iget-object v0, p0, Lo/setQueryCompleteIfExists$onMessageChannelReady;->_rootCause:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const-string p0, "Cancelling"

    return-object p0

    .line 52016
    :cond_1
    iget p0, p0, Lo/setQueryCompleteIfExists$onMessageChannelReady;->_isCompleting:I

    if-eqz p0, :cond_2

    const-string p0, "Completing"

    return-object p0

    :cond_2
    return-object v1

    .line 1063
    :cond_3
    instance-of v0, p0, Lo/pruneAll;

    if-eqz v0, :cond_5

    check-cast p0, Lo/pruneAll;

    invoke-interface {p0}, Lo/pruneAll;->onMessageChannelReady()Z

    move-result p0

    if-eqz p0, :cond_4

    return-object v1

    :cond_4
    const-string p0, "New"

    return-object p0

    .line 1064
    :cond_5
    instance-of p0, p0, Lo/evaluate;

    if-eqz p0, :cond_6

    const-string p0, "Cancelled"

    return-object p0

    :cond_6
    const-string p0, "Completed"

    return-object p0
.end method

.method private final asInterface(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 43492
    :cond_0
    :goto_0
    iget-object v0, p0, Lo/setQueryCompleteIfExists;->_state:Ljava/lang/Object;

    .line 42167
    instance-of v1, v0, Lo/stringHashV2Representation;

    if-nez v1, :cond_3

    .line 688
    instance-of v1, v0, Lo/pruneAll;

    if-eqz v1, :cond_2

    instance-of v1, v0, Lo/setQueryCompleteIfExists$onMessageChannelReady;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lo/setQueryCompleteIfExists$onMessageChannelReady;

    .line 44078
    iget v1, v1, Lo/setQueryCompleteIfExists$onMessageChannelReady;->_isCompleting:I

    if-eqz v1, :cond_1

    goto :goto_1

    .line 692
    :cond_1
    new-instance v1, Lo/evaluate;

    invoke-direct {p0, p1}, Lo/setQueryCompleteIfExists;->ICustomTabsCallback$Stub(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v2

    invoke-direct {v1, v2}, Lo/evaluate;-><init>(Ljava/lang/Throwable;)V

    .line 693
    invoke-direct {p0, v0, v1}, Lo/setQueryCompleteIfExists;->onPostMessage(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 694
    invoke-static {}, Lo/findTrackedQuery;->onMessageChannelReady()Lo/AppCompatDrawableManager;

    move-result-object v1

    if-eq v0, v1, :cond_0

    return-object v0

    .line 690
    :cond_2
    :goto_1
    invoke-static {}, Lo/findTrackedQuery;->ICustomTabsCallback()Lo/AppCompatDrawableManager;

    move-result-object p1

    return-object p1

    .line 42168
    :cond_3
    check-cast v0, Lo/stringHashV2Representation;

    invoke-virtual {v0, p0}, Lo/stringHashV2Representation;->ICustomTabsCallback(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private final extraCallback(Lo/pruneAll;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 870
    invoke-direct {p0, p1}, Lo/setQueryCompleteIfExists;->onMessageChannelReady(Lo/pruneAll;)Lo/pruneOldQueries;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lo/findTrackedQuery;->onMessageChannelReady()Lo/AppCompatDrawableManager;

    move-result-object p1

    return-object p1

    .line 874
    :cond_0
    instance-of v1, p1, Lo/setQueryCompleteIfExists$onMessageChannelReady;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    move-object v1, v2

    goto :goto_0

    :cond_1
    move-object v1, p1

    :goto_0
    check-cast v1, Lo/setQueryCompleteIfExists$onMessageChannelReady;

    if-nez v1, :cond_2

    new-instance v1, Lo/setQueryCompleteIfExists$onMessageChannelReady;

    invoke-direct {v1, v0, v2}, Lo/setQueryCompleteIfExists$onMessageChannelReady;-><init>(Lo/pruneOldQueries;Ljava/lang/Throwable;)V

    .line 1602
    :cond_2
    monitor-enter v1

    .line 51431
    :try_start_0
    iget v3, v1, Lo/setQueryCompleteIfExists$onMessageChannelReady;->_isCompleting:I

    if-eqz v3, :cond_3

    .line 879
    invoke-static {}, Lo/findTrackedQuery;->ICustomTabsCallback()Lo/AppCompatDrawableManager;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object p1

    :cond_3
    const/4 v3, 0x1

    .line 51432
    :try_start_1
    iput v3, v1, Lo/setQueryCompleteIfExists$onMessageChannelReady;->_isCompleting:I

    if-eq v1, p1, :cond_4

    .line 886
    sget-object v4, Lo/setQueryCompleteIfExists;->extraCallback:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v4, p0, p1, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-static {}, Lo/findTrackedQuery;->onMessageChannelReady()Lo/AppCompatDrawableManager;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-object p1

    .line 889
    :cond_4
    :try_start_2
    invoke-static {}, Lo/getSnapshot;->onPostMessage()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_7

    .line 51434
    iget-object v4, v1, Lo/setQueryCompleteIfExists$onMessageChannelReady;->_exceptionsHolder:Ljava/lang/Object;

    .line 51433
    invoke-static {}, Lo/findTrackedQuery;->onNavigationEvent()Lo/AppCompatDrawableManager;

    move-result-object v6

    if-ne v4, v6, :cond_5

    const/4 v4, 0x1

    goto :goto_1

    :cond_5
    const/4 v4, 0x0

    :goto_1
    xor-int/2addr v4, v3

    if-eqz v4, :cond_6

    goto :goto_2

    .line 889
    :cond_6
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 51436
    :cond_7
    :goto_2
    iget-object v4, v1, Lo/setQueryCompleteIfExists$onMessageChannelReady;->_rootCause:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Throwable;

    if-eqz v4, :cond_8

    const/4 v5, 0x1

    .line 892
    :cond_8
    instance-of v4, p2, Lo/evaluate;

    if-nez v4, :cond_9

    move-object v4, v2

    goto :goto_3

    :cond_9
    move-object v4, p2

    :goto_3
    check-cast v4, Lo/evaluate;

    if-eqz v4, :cond_a

    iget-object v4, v4, Lo/evaluate;->onMessageChannelReady:Ljava/lang/Throwable;

    invoke-virtual {v1, v4}, Lo/setQueryCompleteIfExists$onMessageChannelReady;->ICustomTabsCallback(Ljava/lang/Throwable;)V

    .line 51437
    :cond_a
    iget-object v4, v1, Lo/setQueryCompleteIfExists$onMessageChannelReady;->_rootCause:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Throwable;

    xor-int/2addr v3, v5

    if-eqz v3, :cond_b

    goto :goto_4

    :cond_b
    move-object v4, v2

    .line 895
    :goto_4
    sget-object v3, Lo/addWrites;->onPostMessage:Lo/addWrites;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v1

    if-eqz v4, :cond_c

    .line 897
    invoke-direct {p0, v0, v4}, Lo/setQueryCompleteIfExists;->onPostMessage(Lo/pruneOldQueries;Ljava/lang/Throwable;)V

    .line 51438
    :cond_c
    instance-of v0, p1, Lo/calcNextNodeAfterPost;

    if-nez v0, :cond_d

    move-object v0, v2

    goto :goto_5

    :cond_d
    move-object v0, p1

    :goto_5
    check-cast v0, Lo/calcNextNodeAfterPost;

    if-nez v0, :cond_e

    invoke-interface {p1}, Lo/pruneAll;->ICustomTabsCallback()Lo/pruneOldQueries;

    move-result-object p1

    if-eqz p1, :cond_f

    check-cast p1, Lo/updateParents;

    invoke-static {p1}, Lo/setQueryCompleteIfExists;->extraCallback(Lo/updateParents;)Lo/calcNextNodeAfterPost;

    move-result-object v2

    goto :goto_6

    :cond_e
    move-object v2, v0

    :cond_f
    :goto_6
    if-eqz v2, :cond_10

    .line 900
    invoke-direct {p0, v1, v2, p2}, Lo/setQueryCompleteIfExists;->extraCallback(Lo/setQueryCompleteIfExists$onMessageChannelReady;Lo/calcNextNodeAfterPost;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 901
    sget-object p1, Lo/findTrackedQuery;->onMessageChannelReady:Lo/AppCompatDrawableManager;

    return-object p1

    .line 903
    :cond_10
    invoke-direct {p0, v1, p2}, Lo/setQueryCompleteIfExists;->ICustomTabsCallback(Lo/setQueryCompleteIfExists$onMessageChannelReady;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    .line 895
    monitor-exit v1

    throw p1
.end method

.method private extraCallback(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/util/concurrent/CancellationException;
    .locals 2

    .line 424
    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    check-cast v0, Ljava/util/concurrent/CancellationException;

    if-nez v0, :cond_2

    .line 1551
    new-instance v0, Lkotlinx/coroutines/JobCancellationException;

    if-nez p2, :cond_1

    .line 31028
    invoke-virtual {p0}, Lo/setQueryCompleteIfExists;->asInterface()Ljava/lang/String;

    move-result-object p2

    .line 1551
    :cond_1
    move-object v1, p0

    check-cast v1, Lo/assertValidTrackedQuery;

    invoke-direct {v0, p2, p1, v1}, Lkotlinx/coroutines/JobCancellationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lo/assertValidTrackedQuery;)V

    check-cast v0, Ljava/util/concurrent/CancellationException;

    :cond_2
    return-object v0
.end method

.method private static extraCallback(Lo/updateParents;)Lo/calcNextNodeAfterPost;
    .locals 3

    .line 938
    :goto_0
    invoke-virtual {p0}, Lo/updateParents;->Z_()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 51441
    invoke-virtual {p0, v1}, Lo/updateParents;->ICustomTabsCallback(Lo/stringHashV2Representation;)Lo/updateParents;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lo/updateParents;->_prev:Ljava/lang/Object;

    check-cast p0, Lo/updateParents;

    invoke-static {p0}, Lo/updateParents;->onNavigationEvent(Lo/updateParents;)Lo/updateParents;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object p0, v0

    goto :goto_0

    .line 52008
    :cond_1
    :goto_1
    iget-object v0, p0, Lo/updateParents;->_next:Ljava/lang/Object;

    .line 51444
    instance-of v2, v0, Lo/stringHashV2Representation;

    if-nez v2, :cond_3

    .line 51442
    invoke-static {v0}, Lo/forEachAncestor;->extraCallback(Ljava/lang/Object;)Lo/updateParents;

    move-result-object p0

    .line 941
    invoke-virtual {p0}, Lo/updateParents;->Z_()Z

    move-result v0

    if-nez v0, :cond_1

    .line 942
    instance-of v0, p0, Lo/calcNextNodeAfterPost;

    if-eqz v0, :cond_2

    check-cast p0, Lo/calcNextNodeAfterPost;

    return-object p0

    .line 943
    :cond_2
    instance-of v0, p0, Lo/pruneOldQueries;

    if-eqz v0, :cond_1

    return-object v1

    .line 51445
    :cond_3
    check-cast v0, Lo/stringHashV2Representation;

    invoke-virtual {v0, p0}, Lo/stringHashV2Representation;->ICustomTabsCallback(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method private static extraCallback(Ljava/lang/Throwable;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .line 270
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    return-void

    .line 271
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 1500
    new-instance v1, Ljava/util/IdentityHashMap;

    invoke-direct {v1, v0}, Ljava/util/IdentityHashMap;-><init>(I)V

    check-cast v1, Ljava/util/Map;

    invoke-static {v1}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    .line 1501
    invoke-static {}, Lo/getSnapshot;->ICustomTabsCallback()Z

    move-result v1

    if-nez v1, :cond_1

    move-object v1, p0

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lo/wrapOnComplete;->extraCallback(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    .line 278
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Throwable;

    .line 1502
    invoke-static {}, Lo/getSnapshot;->ICustomTabsCallback()Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_2

    :cond_3
    invoke-static {v2}, Lo/wrapOnComplete;->extraCallback(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v2

    :goto_2
    if-eq v2, p0, :cond_2

    if-eq v2, v1, :cond_2

    .line 281
    instance-of v3, v2, Ljava/util/concurrent/CancellationException;

    if-nez v3, :cond_2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "$this$addSuppressed"

    .line 1503
    invoke-static {p0, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "exception"

    invoke-static {v2, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19048
    sget-object v3, Lo/deferredInitialization;->onMessageChannelReady:Lo/restoreWrites;

    invoke-virtual {v3, p0, v2}, Lo/restoreWrites;->onPostMessage(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_4
    return-void
.end method

.method private final extraCallback(Lo/setQueryCompleteIfExists$onMessageChannelReady;Lo/calcNextNodeAfterPost;Ljava/lang/Object;)Z
    .locals 3

    .line 915
    :cond_0
    iget-object v0, p2, Lo/calcNextNodeAfterPost;->onNavigationEvent:Lo/calcCompleteChild;

    .line 917
    new-instance v1, Lo/setQueryCompleteIfExists$onPostMessage;

    invoke-direct {v1, p0, p1, p2, p3}, Lo/setQueryCompleteIfExists$onPostMessage;-><init>(Lo/setQueryCompleteIfExists;Lo/setQueryCompleteIfExists$onMessageChannelReady;Lo/calcNextNodeAfterPost;Ljava/lang/Object;)V

    check-cast v1, Lo/unRecordEventRegistration;

    .line 1603
    check-cast v1, Lo/onDisconnectSetValue;

    const/4 v2, 0x0

    .line 51440
    invoke-interface {v0, v2, v2, v1}, Lo/assertValidTrackedQuery;->onPostMessage(ZZLo/onDisconnectSetValue;)Lo/setQueryInactive;

    move-result-object v0

    .line 919
    sget-object v1, Lo/setQueriesComplete;->extraCallback:Lo/setQueriesComplete;

    if-eq v0, v1, :cond_1

    const/4 p1, 0x1

    return p1

    .line 920
    :cond_1
    check-cast p2, Lo/updateParents;

    invoke-static {p2}, Lo/setQueryCompleteIfExists;->extraCallback(Lo/updateParents;)Lo/calcNextNodeAfterPost;

    move-result-object p2

    if-nez p2, :cond_0

    return v2
.end method

.method private final onMessageChannelReady(Lo/pruneAll;)Lo/pruneOldQueries;
    .locals 1

    .line 770
    invoke-interface {p1}, Lo/pruneAll;->ICustomTabsCallback()Lo/pruneOldQueries;

    move-result-object v0

    if-nez v0, :cond_2

    .line 772
    instance-of v0, p1, Lo/prunesAnything;

    if-eqz v0, :cond_0

    new-instance p1, Lo/pruneOldQueries;

    invoke-direct {p1}, Lo/pruneOldQueries;-><init>()V

    return-object p1

    .line 773
    :cond_0
    instance-of v0, p1, Lo/setQueryActiveFlag;

    if-eqz v0, :cond_1

    .line 776
    check-cast p1, Lo/setQueryActiveFlag;

    invoke-direct {p0, p1}, Lo/setQueryCompleteIfExists;->ICustomTabsCallback(Lo/setQueryActiveFlag;)V

    const/4 p1, 0x0

    return-object p1

    .line 779
    :cond_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "State should have list: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    :cond_2
    return-object v0
.end method

.method private final onMessageChannelReady(Lo/pruneAll;Ljava/lang/Object;)V
    .locals 3

    .line 19133
    iget-object v0, p0, Lo/setQueryCompleteIfExists;->_parentHandle:Ljava/lang/Object;

    check-cast v0, Lo/shadowingWrite;

    if-eqz v0, :cond_0

    .line 308
    invoke-interface {v0}, Lo/shadowingWrite;->onNavigationEvent()V

    .line 309
    sget-object v0, Lo/setQueriesComplete;->extraCallback:Lo/setQueriesComplete;

    check-cast v0, Lo/shadowingWrite;

    .line 19134
    iput-object v0, p0, Lo/setQueryCompleteIfExists;->_parentHandle:Ljava/lang/Object;

    .line 311
    :cond_0
    instance-of v0, p2, Lo/evaluate;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    move-object p2, v1

    :cond_1
    check-cast p2, Lo/evaluate;

    if-eqz p2, :cond_2

    iget-object v1, p2, Lo/evaluate;->onMessageChannelReady:Ljava/lang/Throwable;

    .line 316
    :cond_2
    instance-of p2, p1, Lo/setQueryActiveFlag;

    if-eqz p2, :cond_3

    .line 318
    :try_start_0
    move-object p2, p1

    check-cast p2, Lo/setQueryActiveFlag;

    invoke-virtual {p2, v1}, Lo/unRecordEventRegistration;->onPostMessage(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p2

    .line 320
    new-instance v0, Lkotlinx/coroutines/CompletionHandlerException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Exception in completion handler "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " for "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Lkotlinx/coroutines/CompletionHandlerException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    check-cast v0, Ljava/lang/Throwable;

    invoke-virtual {p0, v0}, Lo/setQueryCompleteIfExists;->onPostMessage(Ljava/lang/Throwable;)V

    return-void

    .line 323
    :cond_3
    invoke-interface {p1}, Lo/pruneAll;->ICustomTabsCallback()Lo/pruneOldQueries;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-direct {p0, p1, v1}, Lo/setQueryCompleteIfExists;->onNavigationEvent(Lo/pruneOldQueries;Ljava/lang/Throwable;)V

    :cond_4
    return-void
.end method

.method private onMessageChannelReady()Z
    .locals 2

    .line 7492
    :goto_0
    iget-object v0, p0, Lo/setQueryCompleteIfExists;->_state:Ljava/lang/Object;

    .line 6167
    instance-of v1, v0, Lo/stringHashV2Representation;

    if-nez v1, :cond_1

    .line 186
    instance-of v0, v0, Lo/pruneAll;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0

    .line 6168
    :cond_1
    check-cast v0, Lo/stringHashV2Representation;

    invoke-virtual {v0, p0}, Lo/stringHashV2Representation;->ICustomTabsCallback(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private final onNavigationEvent(Lo/onDisconnectSetValue;Z)Lo/setQueryActiveFlag;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/onDisconnectSetValue<",
            "-",
            "Ljava/lang/Throwable;",
            "Lo/addWrites;",
            ">;Z)",
            "Lo/setQueryActiveFlag<",
            "*>;"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz p2, :cond_5

    .line 513
    instance-of p2, p1, Lo/updateLastUse;

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    check-cast v2, Lo/updateLastUse;

    if-eqz v2, :cond_4

    invoke-static {}, Lo/getSnapshot;->onPostMessage()Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, v2, Lo/setQueryActiveFlag;->extraCallback:Lo/assertValidTrackedQuery;

    move-object v3, p0

    check-cast v3, Lo/setQueryCompleteIfExists;

    if-ne p2, v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    :cond_3
    :goto_2
    if-eqz v2, :cond_4

    check-cast v2, Lo/setQueryActiveFlag;

    return-object v2

    .line 514
    :cond_4
    new-instance p2, Lo/setActiveState;

    move-object v0, p0

    check-cast v0, Lo/assertValidTrackedQuery;

    invoke-direct {p2, v0, p1}, Lo/setActiveState;-><init>(Lo/assertValidTrackedQuery;Lo/onDisconnectSetValue;)V

    check-cast p2, Lo/setQueryActiveFlag;

    return-object p2

    .line 516
    :cond_5
    instance-of p2, p1, Lo/setQueryActiveFlag;

    if-nez p2, :cond_6

    goto :goto_3

    :cond_6
    move-object v2, p1

    :goto_3
    check-cast v2, Lo/setQueryActiveFlag;

    if-eqz v2, :cond_a

    invoke-static {}, Lo/getSnapshot;->onPostMessage()Z

    move-result p2

    if-eqz p2, :cond_9

    iget-object p2, v2, Lo/setQueryActiveFlag;->extraCallback:Lo/assertValidTrackedQuery;

    move-object v3, p0

    check-cast v3, Lo/setQueryCompleteIfExists;

    if-ne p2, v3, :cond_7

    instance-of p2, v2, Lo/updateLastUse;

    if-nez p2, :cond_7

    goto :goto_4

    :cond_7
    const/4 v0, 0x0

    :goto_4
    if-eqz v0, :cond_8

    goto :goto_5

    :cond_8
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    :cond_9
    :goto_5
    if-nez v2, :cond_b

    .line 517
    :cond_a
    new-instance p2, Lo/doAll;

    move-object v0, p0

    check-cast v0, Lo/assertValidTrackedQuery;

    invoke-direct {p2, v0, p1}, Lo/doAll;-><init>(Lo/assertValidTrackedQuery;Lo/onDisconnectSetValue;)V

    move-object v2, p2

    check-cast v2, Lo/setQueryActiveFlag;

    :cond_b
    return-object v2
.end method

.method private final onNavigationEvent(Lo/pruneOldQueries;Ljava/lang/Throwable;)V
    .locals 7

    .line 1524
    check-cast p1, Lo/forEachDescendant;

    .line 22660
    :goto_0
    iget-object v0, p1, Lo/updateParents;->_next:Ljava/lang/Object;

    .line 22096
    instance-of v1, v0, Lo/stringHashV2Representation;

    if-nez v1, :cond_5

    if-eqz v0, :cond_4

    .line 1525
    check-cast v0, Lo/updateParents;

    const/4 v1, 0x0

    .line 1526
    :goto_1
    invoke-static {v0, p1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    .line 1527
    instance-of v2, v0, Lo/setQueryActiveFlag;

    if-eqz v2, :cond_1

    move-object v2, v0

    check-cast v2, Lo/setQueryActiveFlag;

    .line 1529
    :try_start_0
    invoke-virtual {v2, p2}, Lo/unRecordEventRegistration;->onPostMessage(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v3

    if-eqz v1, :cond_0

    const-string v4, "$this$addSuppressed"

    .line 1532
    invoke-static {v1, v4}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "exception"

    invoke-static {v3, v4}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23048
    sget-object v4, Lo/deferredInitialization;->onMessageChannelReady:Lo/restoreWrites;

    invoke-virtual {v4, v1, v3}, Lo/restoreWrites;->onPostMessage(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    if-nez v1, :cond_1

    :cond_0
    move-object v1, p0

    check-cast v1, Lo/setQueryCompleteIfExists;

    .line 1533
    new-instance v4, Lkotlinx/coroutines/CompletionHandlerException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Exception in completion handler "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " for "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1, v3}, Lkotlinx/coroutines/CompletionHandlerException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v1, v4

    check-cast v1, Ljava/lang/Throwable;

    .line 1534
    sget-object v2, Lo/addWrites;->onPostMessage:Lo/addWrites;

    .line 1537
    :cond_1
    :goto_2
    invoke-virtual {v0}, Lo/updateParents;->onTransact()Lo/updateParents;

    move-result-object v0

    goto :goto_1

    :cond_2
    if-eqz v1, :cond_3

    .line 1540
    invoke-virtual {p0, v1}, Lo/setQueryCompleteIfExists;->onPostMessage(Ljava/lang/Throwable;)V

    :cond_3
    return-void

    .line 1525
    :cond_4
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type kotlinx.coroutines.internal.Node /* = kotlinx.coroutines.internal.LockFreeLinkedListNode */"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 22097
    :cond_5
    check-cast v0, Lo/stringHashV2Representation;

    invoke-virtual {v0, p1}, Lo/stringHashV2Representation;->ICustomTabsCallback(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private onNavigationEvent(Ljava/lang/Object;)Z
    .locals 3

    .line 660
    invoke-static {}, Lo/findTrackedQuery;->ICustomTabsCallback()Lo/AppCompatDrawableManager;

    move-result-object v0

    .line 661
    invoke-virtual {p0}, Lo/setQueryCompleteIfExists;->W_()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 664
    invoke-direct {p0, p1}, Lo/setQueryCompleteIfExists;->asInterface(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 665
    sget-object v1, Lo/findTrackedQuery;->onMessageChannelReady:Lo/AppCompatDrawableManager;

    if-ne v0, v1, :cond_0

    return v2

    .line 667
    :cond_0
    invoke-static {}, Lo/findTrackedQuery;->ICustomTabsCallback()Lo/AppCompatDrawableManager;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 668
    invoke-direct {p0, p1}, Lo/setQueryCompleteIfExists;->onRelationshipValidationResult(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 671
    :cond_1
    invoke-static {}, Lo/findTrackedQuery;->ICustomTabsCallback()Lo/AppCompatDrawableManager;

    move-result-object p1

    if-ne v0, p1, :cond_2

    return v2

    .line 672
    :cond_2
    sget-object p1, Lo/findTrackedQuery;->onMessageChannelReady:Lo/AppCompatDrawableManager;

    if-ne v0, p1, :cond_3

    return v2

    .line 673
    :cond_3
    invoke-static {}, Lo/findTrackedQuery;->onPostMessage()Lo/AppCompatDrawableManager;

    move-result-object p1

    if-ne v0, p1, :cond_4

    const/4 p1, 0x0

    return p1

    .line 675
    :cond_4
    invoke-virtual {p0, v0}, Lo/setQueryCompleteIfExists;->extraCallback(Ljava/lang/Object;)V

    return v2
.end method

.method private final onNavigationEvent(Ljava/lang/Throwable;)Z
    .locals 4

    .line 344
    invoke-virtual {p0}, Lo/setQueryCompleteIfExists;->ICustomTabsCallback$Stub$Proxy()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 350
    :cond_0
    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    .line 21133
    iget-object v2, p0, Lo/setQueryCompleteIfExists;->_parentHandle:Ljava/lang/Object;

    check-cast v2, Lo/shadowingWrite;

    if-eqz v2, :cond_4

    .line 353
    sget-object v3, Lo/setQueriesComplete;->extraCallback:Lo/setQueriesComplete;

    if-ne v2, v3, :cond_1

    goto :goto_1

    .line 358
    :cond_1
    invoke-interface {v2, p1}, Lo/shadowingWrite;->onMessageChannelReady(Ljava/lang/Throwable;)Z

    move-result p1

    if-nez p1, :cond_3

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return p1

    :cond_3
    :goto_0
    return v1

    :cond_4
    :goto_1
    return v0
.end method

.method private final onPostMessage(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 844
    instance-of v0, p1, Lo/pruneAll;

    if-nez v0, :cond_0

    .line 845
    invoke-static {}, Lo/findTrackedQuery;->ICustomTabsCallback()Lo/AppCompatDrawableManager;

    move-result-object p1

    return-object p1

    .line 852
    :cond_0
    instance-of v0, p1, Lo/prunesAnything;

    if-nez v0, :cond_1

    instance-of v0, p1, Lo/setQueryActiveFlag;

    if-eqz v0, :cond_3

    :cond_1
    instance-of v0, p1, Lo/calcNextNodeAfterPost;

    if-nez v0, :cond_3

    instance-of v0, p2, Lo/evaluate;

    if-nez v0, :cond_3

    .line 853
    check-cast p1, Lo/pruneAll;

    invoke-direct {p0, p1, p2}, Lo/setQueryCompleteIfExists;->onPostMessage(Lo/pruneAll;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return-object p2

    .line 857
    :cond_2
    invoke-static {}, Lo/findTrackedQuery;->onMessageChannelReady()Lo/AppCompatDrawableManager;

    move-result-object p1

    return-object p1

    .line 860
    :cond_3
    check-cast p1, Lo/pruneAll;

    invoke-direct {p0, p1, p2}, Lo/setQueryCompleteIfExists;->extraCallback(Lo/pruneAll;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private final onPostMessage(Lo/setQueryCompleteIfExists$onMessageChannelReady;Ljava/util/List;)Ljava/lang/Throwable;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/setQueryCompleteIfExists$onMessageChannelReady;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Throwable;",
            ">;)",
            "Ljava/lang/Throwable;"
        }
    .end annotation

    .line 246
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    .line 18083
    iget-object p1, p1, Lo/setQueryCompleteIfExists$onMessageChannelReady;->_rootCause:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Throwable;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 1495
    new-instance p1, Lkotlinx/coroutines/JobCancellationException;

    .line 19028
    invoke-virtual {p0}, Lo/setQueryCompleteIfExists;->asInterface()Ljava/lang/String;

    move-result-object p2

    .line 1495
    move-object v0, p0

    check-cast v0, Lo/assertValidTrackedQuery;

    invoke-direct {p1, p2, v3, v0}, Lkotlinx/coroutines/JobCancellationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lo/assertValidTrackedQuery;)V

    check-cast p1, Ljava/lang/Throwable;

    return-object p1

    :cond_1
    return-object v3

    .line 259
    :cond_2
    move-object p1, p2

    check-cast p1, Ljava/lang/Iterable;

    .line 1496
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Ljava/lang/Throwable;

    .line 259
    instance-of v5, v5, Ljava/util/concurrent/CancellationException;

    xor-int/2addr v5, v1

    if-eqz v5, :cond_3

    goto :goto_1

    :cond_4
    move-object v4, v3

    :goto_1
    check-cast v4, Ljava/lang/Throwable;

    if-eqz v4, :cond_5

    return-object v4

    .line 261
    :cond_5
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Throwable;

    .line 262
    instance-of v0, p2, Lkotlinx/coroutines/TimeoutCancellationException;

    if-eqz v0, :cond_9

    .line 1498
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/lang/Throwable;

    if-eq v4, p2, :cond_7

    .line 263
    instance-of v4, v4, Lkotlinx/coroutines/TimeoutCancellationException;

    if-eqz v4, :cond_7

    const/4 v4, 0x1

    goto :goto_2

    :cond_7
    const/4 v4, 0x0

    :goto_2
    if-eqz v4, :cond_6

    move-object v3, v0

    :cond_8
    check-cast v3, Ljava/lang/Throwable;

    if-eqz v3, :cond_9

    return-object v3

    :cond_9
    return-object p2
.end method

.method private final onPostMessage(Lo/pruneOldQueries;Ljava/lang/Throwable;)V
    .locals 7

    .line 1505
    check-cast p1, Lo/forEachDescendant;

    .line 20660
    :goto_0
    iget-object v0, p1, Lo/updateParents;->_next:Ljava/lang/Object;

    .line 20096
    instance-of v1, v0, Lo/stringHashV2Representation;

    if-nez v1, :cond_5

    if-eqz v0, :cond_4

    .line 1506
    check-cast v0, Lo/updateParents;

    const/4 v1, 0x0

    .line 1507
    :goto_1
    invoke-static {v0, p1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    .line 1508
    instance-of v2, v0, Lo/updateLastUse;

    if-eqz v2, :cond_1

    move-object v2, v0

    check-cast v2, Lo/setQueryActiveFlag;

    .line 1510
    :try_start_0
    invoke-virtual {v2, p2}, Lo/unRecordEventRegistration;->onPostMessage(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v3

    if-eqz v1, :cond_0

    const-string v4, "$this$addSuppressed"

    .line 1513
    invoke-static {v1, v4}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "exception"

    invoke-static {v3, v4}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21048
    sget-object v4, Lo/deferredInitialization;->onMessageChannelReady:Lo/restoreWrites;

    invoke-virtual {v4, v1, v3}, Lo/restoreWrites;->onPostMessage(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    if-nez v1, :cond_1

    :cond_0
    move-object v1, p0

    check-cast v1, Lo/setQueryCompleteIfExists;

    .line 1514
    new-instance v4, Lkotlinx/coroutines/CompletionHandlerException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Exception in completion handler "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " for "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1, v3}, Lkotlinx/coroutines/CompletionHandlerException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v1, v4

    check-cast v1, Ljava/lang/Throwable;

    .line 1515
    sget-object v2, Lo/addWrites;->onPostMessage:Lo/addWrites;

    .line 1518
    :cond_1
    :goto_2
    invoke-virtual {v0}, Lo/updateParents;->onTransact()Lo/updateParents;

    move-result-object v0

    goto :goto_1

    :cond_2
    if-eqz v1, :cond_3

    .line 1521
    invoke-virtual {p0, v1}, Lo/setQueryCompleteIfExists;->onPostMessage(Ljava/lang/Throwable;)V

    .line 332
    :cond_3
    invoke-direct {p0, p2}, Lo/setQueryCompleteIfExists;->onNavigationEvent(Ljava/lang/Throwable;)Z

    return-void

    .line 1506
    :cond_4
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type kotlinx.coroutines.internal.Node /* = kotlinx.coroutines.internal.LockFreeLinkedListNode */"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 20097
    :cond_5
    check-cast v0, Lo/stringHashV2Representation;

    invoke-virtual {v0, p1}, Lo/stringHashV2Representation;->ICustomTabsCallback(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static final synthetic onPostMessage(Lo/setQueryCompleteIfExists;Lo/setQueryCompleteIfExists$onMessageChannelReady;Lo/calcNextNodeAfterPost;Ljava/lang/Object;)V
    .locals 2

    .line 52039
    invoke-static {}, Lo/getSnapshot;->onPostMessage()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 53374
    :goto_0
    iget-object v0, p0, Lo/setQueryCompleteIfExists;->_state:Ljava/lang/Object;

    .line 52049
    instance-of v1, v0, Lo/stringHashV2Representation;

    if-nez v1, :cond_2

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_1

    goto :goto_2

    .line 52039
    :cond_1
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    check-cast p0, Ljava/lang/Throwable;

    throw p0

    .line 52050
    :cond_2
    check-cast v0, Lo/stringHashV2Representation;

    invoke-virtual {v0, p0}, Lo/stringHashV2Representation;->ICustomTabsCallback(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 52041
    :cond_3
    :goto_2
    check-cast p2, Lo/updateParents;

    invoke-static {p2}, Lo/setQueryCompleteIfExists;->extraCallback(Lo/updateParents;)Lo/calcNextNodeAfterPost;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 52043
    invoke-direct {p0, p1, p2, p3}, Lo/setQueryCompleteIfExists;->extraCallback(Lo/setQueryCompleteIfExists$onMessageChannelReady;Lo/calcNextNodeAfterPost;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    .line 52045
    :cond_4
    invoke-direct {p0, p1, p3}, Lo/setQueryCompleteIfExists;->ICustomTabsCallback(Lo/setQueryCompleteIfExists$onMessageChannelReady;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 52046
    invoke-virtual {p0, p1}, Lo/setQueryCompleteIfExists;->extraCallback(Ljava/lang/Object;)V

    :cond_5
    return-void
.end method

.method private final onPostMessage(Lo/pruneAll;Ljava/lang/Object;)Z
    .locals 4

    .line 290
    invoke-static {}, Lo/getSnapshot;->onPostMessage()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    instance-of v0, p1, Lo/prunesAnything;

    if-nez v0, :cond_1

    instance-of v0, p1, Lo/setQueryActiveFlag;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 291
    :cond_3
    :goto_2
    invoke-static {}, Lo/getSnapshot;->onPostMessage()Z

    move-result v0

    if-eqz v0, :cond_5

    instance-of v0, p2, Lo/evaluate;

    xor-int/2addr v0, v2

    if-eqz v0, :cond_4

    goto :goto_3

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 292
    :cond_5
    :goto_3
    sget-object v0, Lo/setQueryCompleteIfExists;->extraCallback:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {p2}, Lo/findTrackedQuery;->onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, p0, p1, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    return v1

    .line 294
    :cond_6
    invoke-virtual {p0, p2}, Lo/setQueryCompleteIfExists;->ICustomTabsCallback(Ljava/lang/Object;)V

    .line 295
    invoke-direct {p0, p1, p2}, Lo/setQueryCompleteIfExists;->onMessageChannelReady(Lo/pruneAll;Ljava/lang/Object;)V

    return v2
.end method

.method private final onRelationshipValidationResult(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    const/4 v0, 0x0

    move-object v1, v0

    .line 48492
    :cond_0
    :goto_0
    iget-object v2, p0, Lo/setQueryCompleteIfExists;->_state:Ljava/lang/Object;

    .line 47167
    instance-of v3, v2, Lo/stringHashV2Representation;

    if-nez v3, :cond_14

    .line 731
    instance-of v3, v2, Lo/setQueryCompleteIfExists$onMessageChannelReady;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_9

    .line 1597
    monitor-enter v2

    .line 733
    :try_start_0
    move-object v3, v2

    check-cast v3, Lo/setQueryCompleteIfExists$onMessageChannelReady;

    .line 50088
    iget-object v3, v3, Lo/setQueryCompleteIfExists$onMessageChannelReady;->_exceptionsHolder:Ljava/lang/Object;

    .line 49092
    invoke-static {}, Lo/findTrackedQuery;->onNavigationEvent()Lo/AppCompatDrawableManager;

    move-result-object v6

    if-ne v3, v6, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_2

    .line 733
    invoke-static {}, Lo/findTrackedQuery;->onPostMessage()Lo/AppCompatDrawableManager;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-object p1

    .line 735
    :cond_2
    :try_start_1
    move-object v3, v2

    check-cast v3, Lo/setQueryCompleteIfExists$onMessageChannelReady;

    .line 50090
    iget-object v3, v3, Lo/setQueryCompleteIfExists$onMessageChannelReady;->_rootCause:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Throwable;

    if-eqz v3, :cond_3

    const/4 v4, 0x1

    :cond_3
    if-nez p1, :cond_4

    if-nez v4, :cond_6

    :cond_4
    if-nez v1, :cond_5

    .line 738
    invoke-direct {p0, p1}, Lo/setQueryCompleteIfExists;->ICustomTabsCallback$Stub(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    .line 739
    :cond_5
    move-object p1, v2

    check-cast p1, Lo/setQueryCompleteIfExists$onMessageChannelReady;

    invoke-virtual {p1, v1}, Lo/setQueryCompleteIfExists$onMessageChannelReady;->ICustomTabsCallback(Ljava/lang/Throwable;)V

    .line 742
    :cond_6
    move-object p1, v2

    check-cast p1, Lo/setQueryCompleteIfExists$onMessageChannelReady;

    .line 50091
    iget-object p1, p1, Lo/setQueryCompleteIfExists$onMessageChannelReady;->_rootCause:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Throwable;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    xor-int/lit8 v1, v4, 0x1

    if-eqz v1, :cond_7

    move-object v0, p1

    .line 742
    :cond_7
    monitor-exit v2

    if-eqz v0, :cond_8

    .line 744
    check-cast v2, Lo/setQueryCompleteIfExists$onMessageChannelReady;

    .line 50092
    iget-object p1, v2, Lo/setQueryCompleteIfExists$onMessageChannelReady;->extraCallback:Lo/pruneOldQueries;

    .line 744
    invoke-direct {p0, p1, v0}, Lo/setQueryCompleteIfExists;->onPostMessage(Lo/pruneOldQueries;Ljava/lang/Throwable;)V

    .line 745
    :cond_8
    invoke-static {}, Lo/findTrackedQuery;->ICustomTabsCallback()Lo/AppCompatDrawableManager;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    .line 742
    monitor-exit v2

    throw p1

    .line 747
    :cond_9
    instance-of v3, v2, Lo/pruneAll;

    if-eqz v3, :cond_13

    if-nez v1, :cond_a

    .line 749
    invoke-direct {p0, p1}, Lo/setQueryCompleteIfExists;->ICustomTabsCallback$Stub(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    .line 750
    :cond_a
    move-object v3, v2

    check-cast v3, Lo/pruneAll;

    invoke-interface {v3}, Lo/pruneAll;->onMessageChannelReady()Z

    move-result v6

    if-eqz v6, :cond_11

    .line 50093
    invoke-static {}, Lo/getSnapshot;->onPostMessage()Z

    move-result v2

    if-eqz v2, :cond_c

    instance-of v2, v3, Lo/setQueryCompleteIfExists$onMessageChannelReady;

    xor-int/2addr v2, v5

    if-eqz v2, :cond_b

    goto :goto_2

    :cond_b
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 50094
    :cond_c
    :goto_2
    invoke-static {}, Lo/getSnapshot;->onPostMessage()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {v3}, Lo/pruneAll;->onMessageChannelReady()Z

    move-result v2

    if-eqz v2, :cond_d

    goto :goto_3

    :cond_d
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 50096
    :cond_e
    :goto_3
    invoke-direct {p0, v3}, Lo/setQueryCompleteIfExists;->onMessageChannelReady(Lo/pruneAll;)Lo/pruneOldQueries;

    move-result-object v2

    if-nez v2, :cond_f

    goto :goto_4

    .line 50098
    :cond_f
    new-instance v6, Lo/setQueryCompleteIfExists$onMessageChannelReady;

    invoke-direct {v6, v2, v1}, Lo/setQueryCompleteIfExists$onMessageChannelReady;-><init>(Lo/pruneOldQueries;Ljava/lang/Throwable;)V

    .line 50099
    sget-object v7, Lo/setQueryCompleteIfExists;->extraCallback:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v7, p0, v3, v6}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    goto :goto_4

    .line 50101
    :cond_10
    invoke-direct {p0, v2, v1}, Lo/setQueryCompleteIfExists;->onPostMessage(Lo/pruneOldQueries;Ljava/lang/Throwable;)V

    const/4 v4, 0x1

    :goto_4
    if-eqz v4, :cond_0

    .line 752
    invoke-static {}, Lo/findTrackedQuery;->ICustomTabsCallback()Lo/AppCompatDrawableManager;

    move-result-object p1

    return-object p1

    .line 755
    :cond_11
    new-instance v3, Lo/evaluate;

    invoke-direct {v3, v1}, Lo/evaluate;-><init>(Ljava/lang/Throwable;)V

    invoke-direct {p0, v2, v3}, Lo/setQueryCompleteIfExists;->onPostMessage(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 757
    invoke-static {}, Lo/findTrackedQuery;->ICustomTabsCallback()Lo/AppCompatDrawableManager;

    move-result-object v4

    if-eq v3, v4, :cond_12

    .line 758
    invoke-static {}, Lo/findTrackedQuery;->onMessageChannelReady()Lo/AppCompatDrawableManager;

    move-result-object v2

    if-eq v3, v2, :cond_0

    return-object v3

    .line 757
    :cond_12
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Cannot happen in "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 763
    :cond_13
    invoke-static {}, Lo/findTrackedQuery;->onPostMessage()Lo/AppCompatDrawableManager;

    move-result-object p1

    return-object p1

    .line 47168
    :cond_14
    check-cast v2, Lo/stringHashV2Representation;

    invoke-virtual {v2, p0}, Lo/stringHashV2Representation;->ICustomTabsCallback(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0
.end method


# virtual methods
.method protected ICustomTabsCallback(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public ICustomTabsCallback()Z
    .locals 2

    .line 5492
    :goto_0
    iget-object v0, p0, Lo/setQueryCompleteIfExists;->_state:Ljava/lang/Object;

    .line 4167
    instance-of v1, v0, Lo/stringHashV2Representation;

    if-nez v1, :cond_1

    .line 183
    instance-of v1, v0, Lo/pruneAll;

    if-eqz v1, :cond_0

    check-cast v0, Lo/pruneAll;

    invoke-interface {v0}, Lo/pruneAll;->onMessageChannelReady()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0

    .line 4168
    :cond_1
    check-cast v0, Lo/stringHashV2Representation;

    invoke-virtual {v0, p0}, Lo/stringHashV2Representation;->ICustomTabsCallback(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public ICustomTabsCallback(Ljava/lang/Throwable;)Z
    .locals 2

    .line 647
    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 648
    :cond_0
    invoke-direct {p0, p1}, Lo/setQueryCompleteIfExists;->onNavigationEvent(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lo/setQueryCompleteIfExists;->Y_()Z

    move-result p1

    if-eqz p1, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method protected ICustomTabsCallback$Stub$Proxy()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final ICustomTabsService()Ljava/util/concurrent/CancellationException;
    .locals 5

    .line 45492
    :goto_0
    iget-object v0, p0, Lo/setQueryCompleteIfExists;->_state:Ljava/lang/Object;

    .line 44167
    instance-of v1, v0, Lo/stringHashV2Representation;

    if-nez v1, :cond_5

    .line 706
    instance-of v1, v0, Lo/setQueryCompleteIfExists$onMessageChannelReady;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lo/setQueryCompleteIfExists$onMessageChannelReady;

    .line 46083
    iget-object v1, v1, Lo/setQueryCompleteIfExists$onMessageChannelReady;->_rootCause:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Throwable;

    goto :goto_1

    .line 707
    :cond_0
    instance-of v1, v0, Lo/evaluate;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lo/evaluate;

    iget-object v1, v1, Lo/evaluate;->onMessageChannelReady:Ljava/lang/Throwable;

    goto :goto_1

    .line 708
    :cond_1
    instance-of v1, v0, Lo/pruneAll;

    if-nez v1, :cond_4

    move-object v1, v2

    .line 711
    :goto_1
    instance-of v3, v1, Ljava/util/concurrent/CancellationException;

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    move-object v2, v1

    :goto_2
    check-cast v2, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_3

    new-instance v2, Lkotlinx/coroutines/JobCancellationException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Parent job is "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lo/setQueryCompleteIfExists;->asBinder(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v3, p0

    check-cast v3, Lo/assertValidTrackedQuery;

    invoke-direct {v2, v0, v1, v3}, Lkotlinx/coroutines/JobCancellationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lo/assertValidTrackedQuery;)V

    check-cast v2, Ljava/util/concurrent/CancellationException;

    :cond_3
    return-object v2

    .line 708
    :cond_4
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Cannot be cancelling child in this state: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    .line 44168
    :cond_5
    check-cast v0, Lo/stringHashV2Representation;

    invoke-virtual {v0, p0}, Lo/stringHashV2Representation;->ICustomTabsCallback(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public W_()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public Y_()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final asBinder()Ljava/util/concurrent/CancellationException;
    .locals 4

    .line 28492
    :goto_0
    iget-object v0, p0, Lo/setQueryCompleteIfExists;->_state:Ljava/lang/Object;

    .line 27167
    instance-of v1, v0, Lo/stringHashV2Representation;

    if-nez v1, :cond_4

    .line 416
    instance-of v1, v0, Lo/setQueryCompleteIfExists$onMessageChannelReady;

    const-string v2, "Job is still new or active: "

    if-eqz v1, :cond_1

    check-cast v0, Lo/setQueryCompleteIfExists$onMessageChannelReady;

    .line 29083
    iget-object v0, v0, Lo/setQueryCompleteIfExists$onMessageChannelReady;->_rootCause:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    .line 416
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 30020
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    .line 416
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is cancelling"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lo/setQueryCompleteIfExists;->extraCallback(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/util/concurrent/CancellationException;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 417
    :cond_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    .line 418
    :cond_1
    instance-of v1, v0, Lo/pruneAll;

    if-nez v1, :cond_3

    .line 419
    instance-of v1, v0, Lo/evaluate;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast v0, Lo/evaluate;

    iget-object v0, v0, Lo/evaluate;->onMessageChannelReady:Ljava/lang/Throwable;

    .line 30423
    invoke-direct {p0, v0, v2}, Lo/setQueryCompleteIfExists;->extraCallback(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/util/concurrent/CancellationException;

    move-result-object v0

    return-object v0

    .line 420
    :cond_2
    new-instance v0, Lkotlinx/coroutines/JobCancellationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 31020
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    .line 420
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " has completed normally"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v3, p0

    check-cast v3, Lo/assertValidTrackedQuery;

    invoke-direct {v0, v1, v2, v3}, Lkotlinx/coroutines/JobCancellationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lo/assertValidTrackedQuery;)V

    check-cast v0, Ljava/util/concurrent/CancellationException;

    :goto_1
    return-object v0

    .line 418
    :cond_3
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    .line 27168
    :cond_4
    check-cast v0, Lo/stringHashV2Representation;

    invoke-virtual {v0, p0}, Lo/stringHashV2Representation;->ICustomTabsCallback(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0
.end method

.method protected asInterface()Ljava/lang/String;
    .locals 1

    const-string v0, "Job was cancelled"

    return-object v0
.end method

.method public final extraCallback(Lo/calcCompleteChild;)Lo/shadowingWrite;
    .locals 1

    .line 967
    new-instance v0, Lo/calcNextNodeAfterPost;

    invoke-direct {v0, p0, p1}, Lo/calcNextNodeAfterPost;-><init>(Lo/setQueryCompleteIfExists;Lo/calcCompleteChild;)V

    check-cast v0, Lo/unRecordEventRegistration;

    .line 1604
    check-cast v0, Lo/onDisconnectSetValue;

    const/4 p1, 0x1

    .line 52010
    invoke-interface {p0, p1, p1, v0}, Lo/assertValidTrackedQuery;->onPostMessage(ZZLo/onDisconnectSetValue;)Lo/setQueryInactive;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 967
    check-cast p1, Lo/shadowingWrite;

    return-object p1

    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.ChildHandle"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected extraCallback(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public final extraCallback(Lo/isQueryComplete;)V
    .locals 0

    .line 634
    invoke-direct {p0, p1}, Lo/setQueryCompleteIfExists;->onNavigationEvent(Ljava/lang/Object;)Z

    return-void
.end method

.method protected extraCallback(Ljava/lang/Throwable;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public fold(Ljava/lang/Object;Lo/nextTransactionOrder;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(TR;",
            "Lo/nextTransactionOrder<",
            "-TR;-",
            "Lo/isZombied$onNavigationEvent;",
            "+TR;>;)TR;"
        }
    .end annotation

    .line 52032
    move-object v0, p0

    check-cast v0, Lo/isZombied$onNavigationEvent;

    const-string v1, "operation"

    invoke-static {p2, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52033
    invoke-interface {p2, p1, v0}, Lo/nextTransactionOrder;->extraCallback(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public get(Lo/isZombied$extraCallback;)Lo/isZombied$onNavigationEvent;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lo/isZombied$onNavigationEvent;",
            ">(",
            "Lo/isZombied$extraCallback<",
            "TE;>;)TE;"
        }
    .end annotation

    .line 52034
    move-object v0, p0

    check-cast v0, Lo/isZombied$onNavigationEvent;

    const-string v1, "key"

    invoke-static {p1, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52036
    invoke-interface {v0}, Lo/isZombied$onNavigationEvent;->getKey()Lo/isZombied$extraCallback;

    move-result-object v1

    invoke-static {v1, p1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final getInterfaceDescriptor()Z
    .locals 6

    .line 24492
    :goto_0
    iget-object v0, p0, Lo/setQueryCompleteIfExists;->_state:Ljava/lang/Object;

    .line 23167
    instance-of v1, v0, Lo/stringHashV2Representation;

    if-nez v1, :cond_6

    .line 25393
    instance-of v1, v0, Lo/prunesAnything;

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_1

    .line 25394
    move-object v1, v0

    check-cast v1, Lo/prunesAnything;

    .line 26307
    iget-boolean v1, v1, Lo/prunesAnything;->onMessageChannelReady:Z

    if-nez v1, :cond_3

    .line 25395
    sget-object v1, Lo/setQueryCompleteIfExists;->extraCallback:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {}, Lo/findTrackedQuery;->extraCallback()Lo/prunesAnything;

    move-result-object v5

    invoke-virtual {v1, p0, v0, v5}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 25396
    :cond_0
    invoke-virtual {p0}, Lo/setQueryCompleteIfExists;->onRelationshipValidationResult()V

    goto :goto_1

    .line 25399
    :cond_1
    instance-of v1, v0, Lo/foldKeptNodes;

    if-eqz v1, :cond_3

    .line 25400
    sget-object v1, Lo/setQueryCompleteIfExists;->extraCallback:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-object v5, v0

    check-cast v5, Lo/foldKeptNodes;

    .line 26376
    iget-object v5, v5, Lo/foldKeptNodes;->extraCallback:Lo/pruneOldQueries;

    .line 25400
    invoke-virtual {v1, p0, v0, v5}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_2

    .line 25401
    :cond_2
    invoke-virtual {p0}, Lo/setQueryCompleteIfExists;->onRelationshipValidationResult()V

    :goto_1
    const/4 v2, 0x1

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    :goto_2
    if-eqz v2, :cond_5

    if-eq v2, v4, :cond_4

    goto :goto_0

    :cond_4
    return v4

    :cond_5
    return v3

    .line 23168
    :cond_6
    check-cast v0, Lo/stringHashV2Representation;

    invoke-virtual {v0, p0}, Lo/stringHashV2Representation;->ICustomTabsCallback(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final getKey()Lo/isZombied$extraCallback;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/isZombied$extraCallback<",
            "*>;"
        }
    .end annotation

    .line 29
    sget-object v0, Lo/assertValidTrackedQuery;->onNavigationEvent:Lo/assertValidTrackedQuery$onNavigationEvent;

    check-cast v0, Lo/isZombied$extraCallback;

    return-object v0
.end method

.method public minusKey(Lo/isZombied$extraCallback;)Lo/isZombied;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/isZombied$extraCallback<",
            "*>;)",
            "Lo/isZombied;"
        }
    .end annotation

    .line 52037
    move-object v0, p0

    check-cast v0, Lo/isZombied$onNavigationEvent;

    const-string v1, "key"

    invoke-static {p1, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52038
    invoke-interface {v0}, Lo/isZombied$onNavigationEvent;->getKey()Lo/isZombied$extraCallback;

    move-result-object v1

    invoke-static {v1, p1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lo/setFirebaseApp;->onNavigationEvent:Lo/setFirebaseApp;

    check-cast p1, Lo/isZombied;

    return-object p1

    :cond_0
    check-cast v0, Lo/isZombied;

    return-object v0
.end method

.method public final newSession()Lo/shadowingWrite;
    .locals 1

    .line 133
    iget-object v0, p0, Lo/setQueryCompleteIfExists;->_parentHandle:Ljava/lang/Object;

    check-cast v0, Lo/shadowingWrite;

    return-object v0
.end method

.method public final onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 51429
    :cond_0
    :goto_0
    iget-object v0, p0, Lo/setQueryCompleteIfExists;->_state:Ljava/lang/Object;

    .line 50104
    instance-of v1, v0, Lo/stringHashV2Representation;

    if-nez v1, :cond_4

    .line 825
    invoke-direct {p0, v0, p1}, Lo/setQueryCompleteIfExists;->onPostMessage(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 827
    invoke-static {}, Lo/findTrackedQuery;->ICustomTabsCallback()Lo/AppCompatDrawableManager;

    move-result-object v1

    if-ne v0, v1, :cond_3

    .line 828
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 829
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Job "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is already complete or completing, but is being completed with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 830
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 51430
    instance-of v2, p1, Lo/evaluate;

    const/4 v3, 0x0

    if-nez v2, :cond_1

    move-object p1, v3

    :cond_1
    check-cast p1, Lo/evaluate;

    if-eqz p1, :cond_2

    iget-object v3, p1, Lo/evaluate;->onMessageChannelReady:Ljava/lang/Throwable;

    .line 828
    :cond_2
    invoke-direct {v0, v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 832
    :cond_3
    invoke-static {}, Lo/findTrackedQuery;->onMessageChannelReady()Lo/AppCompatDrawableManager;

    move-result-object v1

    if-eq v0, v1, :cond_0

    return-object v0

    .line 50105
    :cond_4
    check-cast v0, Lo/stringHashV2Representation;

    invoke-virtual {v0, p0}, Lo/stringHashV2Representation;->ICustomTabsCallback(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final onNavigationEvent(Ljava/util/concurrent/CancellationException;)V
    .locals 3

    .line 1587
    new-instance p1, Lkotlinx/coroutines/JobCancellationException;

    .line 41028
    invoke-virtual {p0}, Lo/setQueryCompleteIfExists;->asInterface()Ljava/lang/String;

    move-result-object v0

    .line 1587
    move-object v1, p0

    check-cast v1, Lo/assertValidTrackedQuery;

    const/4 v2, 0x0

    invoke-direct {p1, v0, v2, v1}, Lkotlinx/coroutines/JobCancellationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lo/assertValidTrackedQuery;)V

    check-cast p1, Ljava/lang/Throwable;

    .line 41629
    invoke-direct {p0, p1}, Lo/setQueryCompleteIfExists;->onNavigationEvent(Ljava/lang/Object;)Z

    return-void
.end method

.method public final onNavigationEvent(Lo/assertValidTrackedQuery;)V
    .locals 1

    .line 143
    invoke-static {}, Lo/getSnapshot;->onPostMessage()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2133
    iget-object v0, p0, Lo/setQueryCompleteIfExists;->_parentHandle:Ljava/lang/Object;

    check-cast v0, Lo/shadowingWrite;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    .line 143
    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    :cond_2
    :goto_1
    if-nez p1, :cond_3

    .line 145
    sget-object p1, Lo/setQueriesComplete;->extraCallback:Lo/setQueriesComplete;

    check-cast p1, Lo/shadowingWrite;

    .line 2134
    iput-object p1, p0, Lo/setQueryCompleteIfExists;->_parentHandle:Ljava/lang/Object;

    return-void

    .line 148
    :cond_3
    invoke-interface {p1}, Lo/assertValidTrackedQuery;->getInterfaceDescriptor()Z

    .line 150
    move-object v0, p0

    check-cast v0, Lo/calcCompleteChild;

    invoke-interface {p1, v0}, Lo/assertValidTrackedQuery;->extraCallback(Lo/calcCompleteChild;)Lo/shadowingWrite;

    move-result-object p1

    .line 3134
    iput-object p1, p0, Lo/setQueryCompleteIfExists;->_parentHandle:Ljava/lang/Object;

    .line 153
    invoke-direct {p0}, Lo/setQueryCompleteIfExists;->onMessageChannelReady()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 154
    invoke-interface {p1}, Lo/shadowingWrite;->onNavigationEvent()V

    .line 155
    sget-object p1, Lo/setQueriesComplete;->extraCallback:Lo/setQueriesComplete;

    check-cast p1, Lo/shadowingWrite;

    .line 4134
    iput-object p1, p0, Lo/setQueryCompleteIfExists;->_parentHandle:Ljava/lang/Object;

    :cond_4
    return-void
.end method

.method public final onPostMessage(ZZLo/onDisconnectSetValue;)Lo/setQueryInactive;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Lo/onDisconnectSetValue<",
            "-",
            "Ljava/lang/Throwable;",
            "Lo/addWrites;",
            ">;)",
            "Lo/setQueryInactive;"
        }
    .end annotation

    const/4 v0, 0x0

    move-object v1, v0

    .line 32492
    :cond_0
    :goto_0
    iget-object v2, p0, Lo/setQueryCompleteIfExists;->_state:Ljava/lang/Object;

    .line 31167
    instance-of v3, v2, Lo/stringHashV2Representation;

    if-nez v3, :cond_15

    .line 459
    instance-of v3, v2, Lo/prunesAnything;

    if-eqz v3, :cond_4

    .line 460
    move-object v3, v2

    check-cast v3, Lo/prunesAnything;

    .line 33307
    iget-boolean v4, v3, Lo/prunesAnything;->onMessageChannelReady:Z

    if-eqz v4, :cond_2

    if-nez v1, :cond_1

    .line 462
    invoke-direct {p0, p3, p1}, Lo/setQueryCompleteIfExists;->onNavigationEvent(Lo/onDisconnectSetValue;Z)Lo/setQueryActiveFlag;

    move-result-object v1

    .line 463
    :cond_1
    sget-object v3, Lo/setQueryCompleteIfExists;->extraCallback:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v3, p0, v2, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    check-cast v1, Lo/setQueryInactive;

    return-object v1

    .line 33525
    :cond_2
    new-instance v2, Lo/pruneOldQueries;

    invoke-direct {v2}, Lo/pruneOldQueries;-><init>()V

    .line 34307
    iget-boolean v4, v3, Lo/prunesAnything;->onMessageChannelReady:Z

    if-eqz v4, :cond_3

    .line 33526
    check-cast v2, Lo/pruneAll;

    goto :goto_1

    :cond_3
    new-instance v4, Lo/foldKeptNodes;

    invoke-direct {v4, v2}, Lo/foldKeptNodes;-><init>(Lo/pruneOldQueries;)V

    move-object v2, v4

    check-cast v2, Lo/pruneAll;

    .line 33527
    :goto_1
    sget-object v4, Lo/setQueryCompleteIfExists;->extraCallback:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v4, p0, v3, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    .line 467
    :cond_4
    instance-of v3, v2, Lo/pruneAll;

    if-eqz v3, :cond_11

    .line 468
    move-object v3, v2

    check-cast v3, Lo/pruneAll;

    invoke-interface {v3}, Lo/pruneAll;->ICustomTabsCallback()Lo/pruneOldQueries;

    move-result-object v3

    if-nez v3, :cond_7

    if-eqz v2, :cond_6

    .line 470
    check-cast v2, Lo/setQueryActiveFlag;

    .line 34532
    new-instance v3, Lo/pruneOldQueries;

    invoke-direct {v3}, Lo/pruneOldQueries;-><init>()V

    check-cast v3, Lo/updateParents;

    invoke-virtual {v2, v3}, Lo/updateParents;->extraCallback(Lo/updateParents;)Z

    .line 36660
    :goto_2
    iget-object v3, v2, Lo/updateParents;->_next:Ljava/lang/Object;

    .line 36096
    instance-of v4, v3, Lo/stringHashV2Representation;

    if-nez v4, :cond_5

    .line 35102
    invoke-static {v3}, Lo/forEachAncestor;->extraCallback(Ljava/lang/Object;)Lo/updateParents;

    move-result-object v3

    .line 34536
    sget-object v4, Lo/setQueryCompleteIfExists;->extraCallback:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v4, p0, v2, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    .line 36097
    :cond_5
    check-cast v3, Lo/stringHashV2Representation;

    invoke-virtual {v3, v2}, Lo/stringHashV2Representation;->ICustomTabsCallback(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 470
    :cond_6
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type kotlinx.coroutines.JobNode<*>"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 473
    :cond_7
    sget-object v4, Lo/setQueriesComplete;->extraCallback:Lo/setQueriesComplete;

    check-cast v4, Lo/setQueryInactive;

    if-eqz p1, :cond_d

    .line 474
    instance-of v5, v2, Lo/setQueryCompleteIfExists$onMessageChannelReady;

    if-eqz v5, :cond_d

    .line 1554
    monitor-enter v2

    .line 477
    :try_start_0
    move-object v5, v2

    check-cast v5, Lo/setQueryCompleteIfExists$onMessageChannelReady;

    .line 37083
    iget-object v5, v5, Lo/setQueryCompleteIfExists$onMessageChannelReady;->_rootCause:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Throwable;

    if-eqz v5, :cond_8

    .line 1555
    instance-of v6, p3, Lo/calcNextNodeAfterPost;

    if-eqz v6, :cond_c

    move-object v6, v2

    check-cast v6, Lo/setQueryCompleteIfExists$onMessageChannelReady;

    .line 38078
    iget v6, v6, Lo/setQueryCompleteIfExists$onMessageChannelReady;->_isCompleting:I

    if-nez v6, :cond_c

    :cond_8
    if-nez v1, :cond_9

    .line 482
    invoke-direct {p0, p3, p1}, Lo/setQueryCompleteIfExists;->onNavigationEvent(Lo/onDisconnectSetValue;Z)Lo/setQueryActiveFlag;

    move-result-object v1

    .line 483
    :cond_9
    invoke-direct {p0, v2, v3, v1}, Lo/setQueryCompleteIfExists;->ICustomTabsCallback(Ljava/lang/Object;Lo/pruneOldQueries;Lo/setQueryActiveFlag;)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_a

    monitor-exit v2

    goto/16 :goto_0

    :cond_a
    if-nez v5, :cond_b

    .line 485
    :try_start_1
    check-cast v1, Lo/setQueryInactive;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    return-object v1

    .line 487
    :cond_b
    :try_start_2
    move-object v4, v1

    check-cast v4, Lo/setQueryInactive;

    .line 489
    :cond_c
    sget-object v6, Lo/addWrites;->onPostMessage:Lo/addWrites;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v2

    goto :goto_3

    :catchall_0
    move-exception p1

    monitor-exit v2

    throw p1

    :cond_d
    move-object v5, v0

    :goto_3
    if-eqz v5, :cond_f

    if-eqz p2, :cond_e

    .line 1556
    invoke-interface {p3, v5}, Lo/onDisconnectSetValue;->onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e
    return-object v4

    :cond_f
    if-nez v1, :cond_10

    .line 496
    invoke-direct {p0, p3, p1}, Lo/setQueryCompleteIfExists;->onNavigationEvent(Lo/onDisconnectSetValue;Z)Lo/setQueryActiveFlag;

    move-result-object v1

    .line 497
    :cond_10
    invoke-direct {p0, v2, v3, v1}, Lo/setQueryCompleteIfExists;->ICustomTabsCallback(Ljava/lang/Object;Lo/pruneOldQueries;Lo/setQueryActiveFlag;)Z

    move-result v2

    if-eqz v2, :cond_0

    check-cast v1, Lo/setQueryInactive;

    return-object v1

    :cond_11
    if-eqz p2, :cond_14

    .line 504
    instance-of p1, v2, Lo/evaluate;

    if-nez p1, :cond_12

    move-object v2, v0

    :cond_12
    check-cast v2, Lo/evaluate;

    if-eqz v2, :cond_13

    iget-object v0, v2, Lo/evaluate;->onMessageChannelReady:Ljava/lang/Throwable;

    .line 1557
    :cond_13
    invoke-interface {p3, v0}, Lo/onDisconnectSetValue;->onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;

    .line 505
    :cond_14
    sget-object p1, Lo/setQueriesComplete;->extraCallback:Lo/setQueriesComplete;

    check-cast p1, Lo/setQueryInactive;

    return-object p1

    .line 31168
    :cond_15
    check-cast v2, Lo/stringHashV2Representation;

    invoke-virtual {v2, p0}, Lo/stringHashV2Representation;->ICustomTabsCallback(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0
.end method

.method public onPostMessage(Ljava/lang/Throwable;)V
    .locals 0

    .line 977
    throw p1
.end method

.method public onRelationshipValidationResult()V
    .locals 0

    return-void
.end method

.method public onTransact()Ljava/lang/String;
    .locals 1

    .line 52013
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public plus(Lo/isZombied;)Lo/isZombied;
    .locals 2

    .line 52017
    move-object v0, p0

    check-cast v0, Lo/isZombied$onNavigationEvent;

    const-string v1, "context"

    .line 52018
    invoke-static {p1, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lo/isZombied;

    invoke-static {p1, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52019
    sget-object v1, Lo/setFirebaseApp;->onNavigationEvent:Lo/setFirebaseApp;

    if-ne p1, v1, :cond_0

    return-object v0

    .line 52020
    :cond_0
    sget-object v1, Lo/isZombied$onPostMessage$onMessageChannelReady;->onPostMessage:Lo/isZombied$onPostMessage$onMessageChannelReady;

    check-cast v1, Lo/nextTransactionOrder;

    invoke-interface {p1, v0, v1}, Lo/isZombied;->fold(Ljava/lang/Object;Lo/nextTransactionOrder;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/isZombied;

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1047
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 52011
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lo/setQueryCompleteIfExists;->onTransact()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x7b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lo/setQueryCompleteIfExists;->warmup()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lo/setQueryCompleteIfExists;->asBinder(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x7d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1047
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 52012
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 1047
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final warmup()Ljava/lang/Object;
    .locals 2

    .line 1492
    :goto_0
    iget-object v0, p0, Lo/setQueryCompleteIfExists;->_state:Ljava/lang/Object;

    .line 167
    instance-of v1, v0, Lo/stringHashV2Representation;

    if-nez v1, :cond_0

    return-object v0

    .line 168
    :cond_0
    check-cast v0, Lo/stringHashV2Representation;

    invoke-virtual {v0, p0}, Lo/stringHashV2Representation;->ICustomTabsCallback(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
