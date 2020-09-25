.class final Lo/getViewGroup$onPostMessage;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getViewGroup$ICustomTabsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getViewGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "onPostMessage"
.end annotation


# instance fields
.field private final onMessageChannelReady:Landroid/util/DisplayMetrics;


# direct methods
.method constructor <init>(Landroid/util/DisplayMetrics;)V
    .locals 0

    .line 260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 261
    iput-object p1, p0, Lo/getViewGroup$onPostMessage;->onMessageChannelReady:Landroid/util/DisplayMetrics;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()I
    .locals 1

    .line 266
    iget-object v0, p0, Lo/getViewGroup$onPostMessage;->onMessageChannelReady:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    return v0
.end method

.method public final onNavigationEvent()I
    .locals 1

    .line 271
    iget-object v0, p0, Lo/getViewGroup$onPostMessage;->onMessageChannelReady:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    return v0
.end method
