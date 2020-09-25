.class abstract Lo/MediaSessionCompat$OnActiveChangeListener$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/MediaSessionCompat$OnActiveChangeListener$onNavigationEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/MediaSessionCompat$OnActiveChangeListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "onMessageChannelReady"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .line 85
    invoke-direct {p0}, Lo/MediaSessionCompat$OnActiveChangeListener$onMessageChannelReady;-><init>()V

    return-void
.end method


# virtual methods
.method public final extraCallback(Landroid/view/ViewGroup;Landroid/view/View;)F
    .locals 0

    .line 89
    invoke-virtual {p2}, Landroid/view/View;->getTranslationX()F

    move-result p1

    return p1
.end method
