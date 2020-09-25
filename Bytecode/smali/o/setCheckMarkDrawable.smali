.class public final Lo/setCheckMarkDrawable;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/setCheckMarkDrawable$extraCallback;
    }
.end annotation


# static fields
.field private static extraCallback:Lo/setCheckMarkDrawable$extraCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    new-instance v0, Lo/setCheckMarkDrawable$extraCallback;

    invoke-direct {v0}, Lo/setCheckMarkDrawable$extraCallback;-><init>()V

    sput-object v0, Lo/setCheckMarkDrawable;->extraCallback:Lo/setCheckMarkDrawable$extraCallback;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 0

    .line 50
    sget-object p0, Lo/setCheckMarkDrawable;->extraCallback:Lo/setCheckMarkDrawable$extraCallback;

    .line 1076
    iget-object p0, p0, Lo/setCheckMarkDrawable$extraCallback;->onPostMessage:Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    const/4 p0, 0x0

    return p0
.end method

.method public static extraCallback()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static extraCallback(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 65
    sget-object p0, Lo/setCheckMarkDrawable;->extraCallback:Lo/setCheckMarkDrawable$extraCallback;

    .line 2076
    iget-object p0, p0, Lo/setCheckMarkDrawable$extraCallback;->onPostMessage:Ljava/util/Set;

    const/4 p1, 0x4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    const/4 p0, 0x0

    return p0
.end method

.method public static onMessageChannelReady()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static onNavigationEvent()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static onPostMessage()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
