.class final Lo/isNotificationInterceptionEnabled;
.super Lo/br;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/br<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final transient onMessageChannelReady:I

.field private final transient onNavigationEvent:[Ljava/lang/Object;

.field private final transient onPostMessage:I


# direct methods
.method constructor <init>([Ljava/lang/Object;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lo/br;-><init>()V

    .line 2
    iput-object p1, p0, Lo/isNotificationInterceptionEnabled;->onNavigationEvent:[Ljava/lang/Object;

    .line 3
    iput p2, p0, Lo/isNotificationInterceptionEnabled;->onPostMessage:I

    .line 4
    iput p3, p0, Lo/isNotificationInterceptionEnabled;->onMessageChannelReady:I

    return-void
.end method


# virtual methods
.method public final get(I)Ljava/lang/Object;
    .locals 2

    .line 6
    iget v0, p0, Lo/isNotificationInterceptionEnabled;->onMessageChannelReady:I

    invoke-static {p1, v0}, Lo/bZ;->onPostMessage(II)I

    .line 7
    iget-object v0, p0, Lo/isNotificationInterceptionEnabled;->onNavigationEvent:[Ljava/lang/Object;

    mul-int/lit8 p1, p1, 0x2

    iget v1, p0, Lo/isNotificationInterceptionEnabled;->onPostMessage:I

    add-int/2addr p1, v1

    aget-object p1, v0, p1

    return-object p1
.end method

.method final onNavigationEvent()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final size()I
    .locals 1

    .line 9
    iget v0, p0, Lo/isNotificationInterceptionEnabled;->onMessageChannelReady:I

    return v0
.end method
