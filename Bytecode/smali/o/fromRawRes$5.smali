.class final synthetic Lo/fromRawRes$5;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/fromRawRes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic onPostMessage:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 267
    invoke-static {}, Lo/fromRawRes$ICustomTabsCallback;->values()[Lo/fromRawRes$ICustomTabsCallback;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lo/fromRawRes$5;->onPostMessage:[I

    :try_start_0
    sget-object v1, Lo/fromRawRes$ICustomTabsCallback;->onMessageChannelReady:Lo/fromRawRes$ICustomTabsCallback;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lo/fromRawRes$5;->onPostMessage:[I

    sget-object v1, Lo/fromRawRes$ICustomTabsCallback;->onPostMessage:Lo/fromRawRes$ICustomTabsCallback;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
