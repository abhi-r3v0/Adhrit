.class final Lo/hasSessionFileDirectory$extraCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/hasSessionFileDirectory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "extraCallback"
.end annotation


# instance fields
.field public ICustomTabsCallback:Lo/hasSessionFileDirectory$onNavigationEvent;

.field public extraCallback:F

.field public final onMessageChannelReady:Ljava/lang/String;

.field public final onPostMessage:Landroid/view/View;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    .line 433
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 434
    iput-object p1, p0, Lo/hasSessionFileDirectory$extraCallback;->onMessageChannelReady:Ljava/lang/String;

    .line 435
    iput-object p2, p0, Lo/hasSessionFileDirectory$extraCallback;->onPostMessage:Landroid/view/View;

    const/4 p1, 0x0

    .line 436
    iput-object p1, p0, Lo/hasSessionFileDirectory$extraCallback;->ICustomTabsCallback:Lo/hasSessionFileDirectory$onNavigationEvent;

    const/high16 p1, 0x3f800000    # 1.0f

    .line 437
    iput p1, p0, Lo/hasSessionFileDirectory$extraCallback;->extraCallback:F

    return-void
.end method
