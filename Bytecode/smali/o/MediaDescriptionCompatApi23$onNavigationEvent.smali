.class public final Lo/MediaDescriptionCompatApi23$onNavigationEvent;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/MediaDescriptionCompatApi23$ICustomTabsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/MediaDescriptionCompatApi23;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onNavigationEvent"
.end annotation


# instance fields
.field private final onMessageChannelReady:[Lo/MediaDescriptionCompatApi23$onPostMessage;


# direct methods
.method public constructor <init>([Lo/MediaDescriptionCompatApi23$onPostMessage;)V
    .locals 0

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    iput-object p1, p0, Lo/MediaDescriptionCompatApi23$onNavigationEvent;->onMessageChannelReady:[Lo/MediaDescriptionCompatApi23$onPostMessage;

    return-void
.end method


# virtual methods
.method public final onNavigationEvent()[Lo/MediaDescriptionCompatApi23$onPostMessage;
    .locals 1

    .line 158
    iget-object v0, p0, Lo/MediaDescriptionCompatApi23$onNavigationEvent;->onMessageChannelReady:[Lo/MediaDescriptionCompatApi23$onPostMessage;

    return-object v0
.end method
