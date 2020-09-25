.class final Lo/getShowDividers$ICustomTabsCallback;
.super Lo/setVerticalGravity;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getShowDividers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ICustomTabsCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/setVerticalGravity<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final ICustomTabsCallback:Landroid/os/Handler;

.field private final onMessageChannelReady:J

.field final onNavigationEvent:I

.field onPostMessage:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Landroid/os/Handler;IJ)V
    .locals 0

    .line 321
    invoke-direct {p0}, Lo/setVerticalGravity;-><init>()V

    .line 322
    iput-object p1, p0, Lo/getShowDividers$ICustomTabsCallback;->ICustomTabsCallback:Landroid/os/Handler;

    .line 323
    iput p2, p0, Lo/getShowDividers$ICustomTabsCallback;->onNavigationEvent:I

    .line 324
    iput-wide p3, p0, Lo/getShowDividers$ICustomTabsCallback;->onMessageChannelReady:J

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    const/4 p1, 0x0

    .line 341
    iput-object p1, p0, Lo/getShowDividers$ICustomTabsCallback;->onPostMessage:Landroid/graphics/Bitmap;

    return-void
.end method

.method public final synthetic extraCallback(Ljava/lang/Object;)V
    .locals 3

    .line 314
    check-cast p1, Landroid/graphics/Bitmap;

    .line 1334
    iput-object p1, p0, Lo/getShowDividers$ICustomTabsCallback;->onPostMessage:Landroid/graphics/Bitmap;

    .line 1335
    iget-object p1, p0, Lo/getShowDividers$ICustomTabsCallback;->ICustomTabsCallback:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {p1, v0, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1336
    iget-object v0, p0, Lo/getShowDividers$ICustomTabsCallback;->ICustomTabsCallback:Landroid/os/Handler;

    iget-wide v1, p0, Lo/getShowDividers$ICustomTabsCallback;->onMessageChannelReady:J

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    return-void
.end method
