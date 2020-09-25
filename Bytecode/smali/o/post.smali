.class public final Lo/post;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static onPostMessage:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static ICustomTabsCallback(Z)V
    .locals 0

    const/4 p0, 0x1

    .line 23
    sput-boolean p0, Lo/post;->onPostMessage:Z

    return-void
.end method

.method public static ICustomTabsCallback()Z
    .locals 1

    .line 32
    sget-boolean v0, Lo/post;->onPostMessage:Z

    return v0
.end method
