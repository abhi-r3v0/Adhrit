.class public final Lo/writeSInt32NoTag;
.super Lo/writeEnumNoTag;
.source ""


# instance fields
.field public final extraCallback:Lo/computeEnumSize;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/computeEnumSize<",
            "Ljava/lang/String;",
            "Lo/writeEnumNoTag;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Lo/writeEnumNoTag;-><init>()V

    .line 33
    new-instance v0, Lo/computeEnumSize;

    invoke-direct {v0}, Lo/computeEnumSize;-><init>()V

    iput-object v0, p0, Lo/writeSInt32NoTag;->extraCallback:Lo/computeEnumSize;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p1, p0, :cond_1

    .line 197
    instance-of v0, p1, Lo/writeSInt32NoTag;

    if-eqz v0, :cond_0

    check-cast p1, Lo/writeSInt32NoTag;

    iget-object p1, p1, Lo/writeSInt32NoTag;->extraCallback:Lo/computeEnumSize;

    iget-object v0, p0, Lo/writeSInt32NoTag;->extraCallback:Lo/computeEnumSize;

    .line 198
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final hashCode()I
    .locals 1

    .line 203
    iget-object v0, p0, Lo/writeSInt32NoTag;->extraCallback:Lo/computeEnumSize;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
