.class final Lo/AppsFlyerLibCore$2$extraCallback;
.super Lo/onBecameBackground$extraCallback;
.source ""

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/AppsFlyerLibCore$2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "extraCallback"
.end annotation


# instance fields
.field final extraCallback:I

.field final onNavigationEvent:Ljava/util/zip/ZipEntry;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/util/zip/ZipEntry;I)V
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 1187
    invoke-virtual {p2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p2}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-virtual {p2}, Ljava/util/zip/ZipEntry;->getCompressedSize()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-virtual {p2}, Ljava/util/zip/ZipEntry;->getCrc()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "pseudo-zip-hash-1-%s-%s-%s-%s"

    .line 1185
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 179
    invoke-direct {p0, p1, v0}, Lo/onBecameBackground$extraCallback;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    iput-object p2, p0, Lo/AppsFlyerLibCore$2$extraCallback;->onNavigationEvent:Ljava/util/zip/ZipEntry;

    .line 181
    iput p3, p0, Lo/AppsFlyerLibCore$2$extraCallback;->extraCallback:I

    return-void
.end method


# virtual methods
.method public final compareTo(Ljava/lang/Object;)I
    .locals 1

    .line 192
    iget-object v0, p0, Lo/onBecameBackground$extraCallback;->onPostMessage:Ljava/lang/String;

    check-cast p1, Lo/AppsFlyerLibCore$2$extraCallback;

    iget-object p1, p1, Lo/onBecameBackground$extraCallback;->onPostMessage:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method
