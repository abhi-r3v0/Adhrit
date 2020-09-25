.class final enum Lo/writeBytesNoTag$5;
.super Lo/writeBytesNoTag;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/writeBytesNoTag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4010
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x3

    const/4 v1, 0x0

    .line 90
    invoke-direct {p0, p1, v0, v1}, Lo/writeBytesNoTag;-><init>(Ljava/lang/String;IB)V

    return-void
.end method


# virtual methods
.method public final onPostMessage(Ljava/lang/reflect/Field;)Ljava/lang/String;
    .locals 1

    .line 92
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "_"

    invoke-static {p1, v0}, Lo/writeBytesNoTag$5;->extraCallback(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
