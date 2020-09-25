.class public final Lo/writeInt32NoTag;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final onPostMessage:Ljava/lang/reflect/Field;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Field;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 46
    iput-object p1, p0, Lo/writeInt32NoTag;->onPostMessage:Ljava/lang/reflect/Field;

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 1039
    throw p1
.end method
