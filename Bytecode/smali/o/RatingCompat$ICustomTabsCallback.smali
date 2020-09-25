.class public Lo/RatingCompat$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/RatingCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ICustomTabsCallback"
.end annotation


# instance fields
.field private final ICustomTabsCallback:I

.field private final onPostMessage:[Lo/RatingCompat$onMessageChannelReady;


# direct methods
.method public constructor <init>(I[Lo/RatingCompat$onMessageChannelReady;)V
    .locals 0

    .line 427
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 428
    iput p1, p0, Lo/RatingCompat$ICustomTabsCallback;->ICustomTabsCallback:I

    .line 429
    iput-object p2, p0, Lo/RatingCompat$ICustomTabsCallback;->onPostMessage:[Lo/RatingCompat$onMessageChannelReady;

    return-void
.end method


# virtual methods
.method public ICustomTabsCallback()I
    .locals 1

    .line 433
    iget v0, p0, Lo/RatingCompat$ICustomTabsCallback;->ICustomTabsCallback:I

    return v0
.end method

.method public onNavigationEvent()[Lo/RatingCompat$onMessageChannelReady;
    .locals 1

    .line 437
    iget-object v0, p0, Lo/RatingCompat$ICustomTabsCallback;->onPostMessage:[Lo/RatingCompat$onMessageChannelReady;

    return-object v0
.end method
