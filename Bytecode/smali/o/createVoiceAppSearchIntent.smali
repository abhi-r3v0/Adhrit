.class public final Lo/createVoiceAppSearchIntent;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\"\u0014\u0010\u0000\u001a\u00020\u0001X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "NULL_MAP_VALUE",
        "Ljava/lang/Object;",
        "getNULL_MAP_VALUE",
        "()Ljava/lang/Object;",
        "dd-sdk-android_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field private static final onPostMessage:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 3
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lo/createVoiceAppSearchIntent;->onPostMessage:Ljava/lang/Object;

    return-void
.end method

.method public static final extraCallback()Ljava/lang/Object;
    .locals 1

    .line 3
    sget-object v0, Lo/createVoiceAppSearchIntent;->onPostMessage:Ljava/lang/Object;

    return-object v0
.end method
