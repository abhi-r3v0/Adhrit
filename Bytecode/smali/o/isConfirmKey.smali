.class public final synthetic Lo/isConfirmKey;
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
.field public static final synthetic onPostMessage:[I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    invoke-static {}, Lo/SessionFiles$onPostMessage;->values()[Lo/SessionFiles$onPostMessage;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lo/isConfirmKey;->onPostMessage:[I

    sget-object v1, Lo/SessionFiles$onPostMessage;->onNavigationEvent:Lo/SessionFiles$onPostMessage;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v0, Lo/isConfirmKey;->onPostMessage:[I

    sget-object v1, Lo/SessionFiles$onPostMessage;->onPostMessage:Lo/SessionFiles$onPostMessage;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1

    sget-object v0, Lo/isConfirmKey;->onPostMessage:[I

    sget-object v1, Lo/SessionFiles$onPostMessage;->onRelationshipValidationResult:Lo/SessionFiles$onPostMessage;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1

    sget-object v0, Lo/isConfirmKey;->onPostMessage:[I

    sget-object v1, Lo/SessionFiles$onPostMessage;->ICustomTabsCallback$Stub:Lo/SessionFiles$onPostMessage;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1

    sget-object v0, Lo/isConfirmKey;->onPostMessage:[I

    sget-object v1, Lo/SessionFiles$onPostMessage;->asInterface:Lo/SessionFiles$onPostMessage;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1

    sget-object v0, Lo/isConfirmKey;->onPostMessage:[I

    sget-object v1, Lo/SessionFiles$onPostMessage;->onTransact:Lo/SessionFiles$onPostMessage;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1

    return-void
.end method
