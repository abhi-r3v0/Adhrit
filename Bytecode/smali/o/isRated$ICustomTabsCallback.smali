.class public final Lo/isRated$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/isRated;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ICustomTabsCallback"
.end annotation


# instance fields
.field ICustomTabsCallback:I

.field extraCallback:Z

.field onMessageChannelReady:Lo/getRatingStyle;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Lo/isRated;->onPostMessage(Ljava/util/Locale;)Z

    move-result v0

    .line 1167
    iput-boolean v0, p0, Lo/isRated$ICustomTabsCallback;->extraCallback:Z

    .line 1168
    sget-object v0, Lo/isRated;->onMessageChannelReady:Lo/getRatingStyle;

    iput-object v0, p0, Lo/isRated$ICustomTabsCallback;->onMessageChannelReady:Lo/getRatingStyle;

    const/4 v0, 0x2

    .line 1169
    iput v0, p0, Lo/isRated$ICustomTabsCallback;->ICustomTabsCallback:I

    return-void
.end method
