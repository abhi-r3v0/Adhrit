.class public final synthetic Lo/onWindowFocusChanged;
.super Ljava/lang/Object;


# annotations
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


# static fields
.field public static final synthetic extraCallback:[I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    invoke-static {}, Lo/onVoiceClicked;->values()[Lo/onVoiceClicked;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lo/onWindowFocusChanged;->extraCallback:[I

    sget-object v1, Lo/onVoiceClicked;->onPostMessage:Lo/onVoiceClicked;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v0, Lo/onWindowFocusChanged;->extraCallback:[I

    sget-object v1, Lo/onVoiceClicked;->ICustomTabsCallback:Lo/onVoiceClicked;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1

    sget-object v0, Lo/onWindowFocusChanged;->extraCallback:[I

    sget-object v1, Lo/onVoiceClicked;->extraCallback:Lo/onVoiceClicked;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1

    sget-object v0, Lo/onWindowFocusChanged;->extraCallback:[I

    sget-object v1, Lo/onVoiceClicked;->onMessageChannelReady:Lo/onVoiceClicked;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1

    sget-object v0, Lo/onWindowFocusChanged;->extraCallback:[I

    sget-object v1, Lo/onVoiceClicked;->asInterface:Lo/onVoiceClicked;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1

    sget-object v0, Lo/onWindowFocusChanged;->extraCallback:[I

    sget-object v1, Lo/onVoiceClicked;->onTransact:Lo/onVoiceClicked;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1

    sget-object v0, Lo/onWindowFocusChanged;->extraCallback:[I

    sget-object v1, Lo/onVoiceClicked;->onNavigationEvent:Lo/onVoiceClicked;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1

    return-void
.end method
