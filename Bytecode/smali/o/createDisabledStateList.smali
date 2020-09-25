.class public final Lo/createDisabledStateList;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/MediaSessionCompat$1$onMessageChannelReady;


# instance fields
.field public final ICustomTabsCallback:Lo/setSpeed;

.field public final extraCallback:Landroid/widget/TextView;

.field public final onNavigationEvent:Landroid/widget/TextView;

.field public final onPostMessage:Landroidx/cardview/widget/CardView;


# direct methods
.method public constructor <init>(Landroidx/cardview/widget/CardView;Landroid/widget/TextView;Lo/setSpeed;Landroid/widget/TextView;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lo/createDisabledStateList;->onPostMessage:Landroidx/cardview/widget/CardView;

    .line 48
    iput-object p2, p0, Lo/createDisabledStateList;->onNavigationEvent:Landroid/widget/TextView;

    .line 50
    iput-object p3, p0, Lo/createDisabledStateList;->ICustomTabsCallback:Lo/setSpeed;

    .line 52
    iput-object p4, p0, Lo/createDisabledStateList;->extraCallback:Landroid/widget/TextView;

    return-void
.end method
