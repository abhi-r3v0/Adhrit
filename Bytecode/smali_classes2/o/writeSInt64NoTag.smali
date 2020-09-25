.class public final Lo/writeSInt64NoTag;
.super Lo/writeEnumNoTag;
.source ""


# static fields
.field public static final onMessageChannelReady:Lo/writeSInt64NoTag;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    new-instance v0, Lo/writeSInt64NoTag;

    invoke-direct {v0}, Lo/writeSInt64NoTag;-><init>()V

    sput-object v0, Lo/writeSInt64NoTag;->onMessageChannelReady:Lo/writeSInt64NoTag;

    return-void
.end method

.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 39
    invoke-direct {p0}, Lo/writeEnumNoTag;-><init>()V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    if-eq p0, p1, :cond_1

    .line 65
    instance-of p1, p1, Lo/writeSInt64NoTag;

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

    .line 57
    const-class v0, Lo/writeSInt64NoTag;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
