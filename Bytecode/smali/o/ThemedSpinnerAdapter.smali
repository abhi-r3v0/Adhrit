.class public final Lo/ThemedSpinnerAdapter;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/MediaSessionCompat$1$onMessageChannelReady;


# instance fields
.field public final ICustomTabsCallback:Landroidx/cardview/widget/CardView;

.field public final extraCallback:Landroid/widget/TextView;

.field public final onMessageChannelReady:Lo/setSpeed;

.field public final onNavigationEvent:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroidx/cardview/widget/CardView;Landroid/widget/TextView;Lo/setSpeed;Landroid/widget/TextView;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lo/ThemedSpinnerAdapter;->ICustomTabsCallback:Landroidx/cardview/widget/CardView;

    .line 48
    iput-object p2, p0, Lo/ThemedSpinnerAdapter;->onNavigationEvent:Landroid/widget/TextView;

    .line 50
    iput-object p3, p0, Lo/ThemedSpinnerAdapter;->onMessageChannelReady:Lo/setSpeed;

    .line 52
    iput-object p4, p0, Lo/ThemedSpinnerAdapter;->extraCallback:Landroid/widget/TextView;

    return-void
.end method
