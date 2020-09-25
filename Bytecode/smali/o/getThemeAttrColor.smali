.class public final Lo/getThemeAttrColor;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/MediaSessionCompat$1$onMessageChannelReady;


# instance fields
.field public final ICustomTabsCallback:Landroid/widget/TextView;

.field public final onMessageChannelReady:Landroid/widget/TextView;

.field public final onNavigationEvent:Lo/setSpeed;

.field public final onPostMessage:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;Lo/setSpeed;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lo/getThemeAttrColor;->ICustomTabsCallback:Landroid/widget/TextView;

    .line 39
    iput-object p2, p0, Lo/getThemeAttrColor;->onNavigationEvent:Lo/setSpeed;

    .line 40
    iput-object p3, p0, Lo/getThemeAttrColor;->onMessageChannelReady:Landroid/widget/TextView;

    .line 41
    iput-object p4, p0, Lo/getThemeAttrColor;->onPostMessage:Landroid/widget/TextView;

    return-void
.end method
