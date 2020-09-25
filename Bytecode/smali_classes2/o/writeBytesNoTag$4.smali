.class final enum Lo/writeBytesNoTag$4;
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
    .locals 1

    const/4 v0, 0x0

    .line 37
    invoke-direct {p0, p1, v0, v0}, Lo/writeBytesNoTag;-><init>(Ljava/lang/String;IB)V

    return-void
.end method


# virtual methods
.method public final onPostMessage(Ljava/lang/reflect/Field;)Ljava/lang/String;
    .locals 0

    .line 39
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
