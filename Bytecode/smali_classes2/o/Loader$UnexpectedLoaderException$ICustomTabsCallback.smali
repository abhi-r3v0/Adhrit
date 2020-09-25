.class final Lo/Loader$UnexpectedLoaderException$ICustomTabsCallback;
.super Lo/AdActivity;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Loader$UnexpectedLoaderException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ICustomTabsCallback"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lo/AdActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMessageChannelReady(Ljava/lang/Throwable;)V
    .locals 0

    .line 3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method
