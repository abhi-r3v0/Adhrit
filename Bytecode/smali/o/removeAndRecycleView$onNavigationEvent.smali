.class public final Lo/removeAndRecycleView$onNavigationEvent;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/AppsFlyerLibCore$6;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/removeAndRecycleView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onNavigationEvent"
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1023
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic onPostMessage(Lo/removeAndRecycleView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Lo/clearScrap;
    .locals 2

    and-int/lit8 v0, p5, 0x1

    if-eqz v0, :cond_0

    .line 16
    sget-object p1, Lo/getTrackTintList;->extraCallback:Lo/getTrackTintList;

    invoke-static {}, Lo/getTrackTintList;->mayLaunchUrl()Ljava/lang/String;

    move-result-object p1

    :cond_0
    and-int/lit8 v0, p5, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    move-object p2, v1

    :cond_1
    and-int/lit8 v0, p5, 0x4

    if-eqz v0, :cond_2

    move-object p3, v1

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    const/16 p4, 0xa

    .line 19
    :cond_3
    invoke-interface {p0, p1, p2, p3, p4}, Lo/removeAndRecycleView;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lo/clearScrap;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final onNavigationEvent(Ljava/lang/String;I)Z
    .locals 1

    and-int/lit8 p2, p2, 0x1

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    const/16 p2, 0x10

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    or-int/2addr p2, v0

    .line 1029
    invoke-static {p1, p2}, Lcom/facebook/soloader/SoLoader;->extraCallback(Ljava/lang/String;I)Z

    move-result p1

    return p1
.end method
