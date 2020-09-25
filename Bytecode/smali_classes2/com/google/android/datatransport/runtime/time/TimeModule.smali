.class public abstract Lcom/google/android/datatransport/runtime/time/TimeModule;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ICustomTabsCallback()Lo/b;
    .locals 1

    .line 31
    new-instance v0, Lo/getItemDelegate$onPostMessage;

    invoke-direct {v0}, Lo/getItemDelegate$onPostMessage;-><init>()V

    return-object v0
.end method

.method public static onPostMessage()Lo/b;
    .locals 1

    .line 25
    new-instance v0, Lo/getItemDelegate$ICustomTabsCallback;

    invoke-direct {v0}, Lo/getItemDelegate$ICustomTabsCallback;-><init>()V

    return-object v0
.end method
