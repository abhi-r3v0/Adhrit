.class final Lo/fm;
.super Lo/a$c$1;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/a$c$1<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final transient ICustomTabsCallback:I

.field private final transient extraCallback:[Ljava/lang/Object;

.field private final transient onMessageChannelReady:I


# direct methods
.method constructor <init>([Ljava/lang/Object;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lo/a$c$1;-><init>()V

    .line 2
    iput-object p1, p0, Lo/fm;->extraCallback:[Ljava/lang/Object;

    .line 3
    iput p2, p0, Lo/fm;->onMessageChannelReady:I

    .line 4
    iput p3, p0, Lo/fm;->ICustomTabsCallback:I

    return-void
.end method


# virtual methods
.method public final get(I)Ljava/lang/Object;
    .locals 2

    .line 6
    iget v0, p0, Lo/fm;->ICustomTabsCallback:I

    invoke-static {p1, v0}, Lo/dq;->onMessageChannelReady(II)I

    .line 7
    iget-object v0, p0, Lo/fm;->extraCallback:[Ljava/lang/Object;

    mul-int/lit8 p1, p1, 0x2

    iget v1, p0, Lo/fm;->onMessageChannelReady:I

    add-int/2addr p1, v1

    aget-object p1, v0, p1

    return-object p1
.end method

.method final onRelationshipValidationResult()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final size()I
    .locals 1

    .line 9
    iget v0, p0, Lo/fm;->ICustomTabsCallback:I

    return v0
.end method
