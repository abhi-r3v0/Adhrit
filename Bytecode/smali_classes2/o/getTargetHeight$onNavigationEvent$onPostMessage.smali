.class public final enum Lo/getTargetHeight$onNavigationEvent$onPostMessage;
.super Ljava/lang/Enum;

# interfaces
.implements Lo/setController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getTargetHeight$onNavigationEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "onPostMessage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/getTargetHeight$onNavigationEvent$onPostMessage;",
        ">;",
        "Lo/setController;"
    }
.end annotation


# static fields
.field private static final enum ICustomTabsCallback:Lo/getTargetHeight$onNavigationEvent$onPostMessage;

.field private static final ICustomTabsCallback$Stub:Lo/setHierarchy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setHierarchy<",
            "Lo/getTargetHeight$onNavigationEvent$onPostMessage;",
            ">;"
        }
    .end annotation
.end field

.field private static final enum asBinder:Lo/getTargetHeight$onNavigationEvent$onPostMessage;

.field private static final enum asInterface:Lo/getTargetHeight$onNavigationEvent$onPostMessage;

.field private static final enum extraCallback:Lo/getTargetHeight$onNavigationEvent$onPostMessage;

.field private static final synthetic newSession:[Lo/getTargetHeight$onNavigationEvent$onPostMessage;

.field private static final enum onMessageChannelReady:Lo/getTargetHeight$onNavigationEvent$onPostMessage;

.field private static final enum onNavigationEvent:Lo/getTargetHeight$onNavigationEvent$onPostMessage;

.field private static final enum onPostMessage:Lo/getTargetHeight$onNavigationEvent$onPostMessage;

.field private static final enum onRelationshipValidationResult:Lo/getTargetHeight$onNavigationEvent$onPostMessage;

.field private static final enum onTransact:Lo/getTargetHeight$onNavigationEvent$onPostMessage;


# instance fields
.field private final ICustomTabsCallback$Stub$Proxy:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    new-instance v0, Lo/getTargetHeight$onNavigationEvent$onPostMessage;

    const/4 v1, 0x0

    const-string v2, "ARCH_UNKNOWN"

    invoke-direct {v0, v2, v1, v1}, Lo/getTargetHeight$onNavigationEvent$onPostMessage;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/getTargetHeight$onNavigationEvent$onPostMessage;->onNavigationEvent:Lo/getTargetHeight$onNavigationEvent$onPostMessage;

    new-instance v0, Lo/getTargetHeight$onNavigationEvent$onPostMessage;

    const/4 v2, 0x1

    const-string v3, "ARCH_NON_NATIVE"

    invoke-direct {v0, v3, v2, v2}, Lo/getTargetHeight$onNavigationEvent$onPostMessage;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/getTargetHeight$onNavigationEvent$onPostMessage;->extraCallback:Lo/getTargetHeight$onNavigationEvent$onPostMessage;

    new-instance v0, Lo/getTargetHeight$onNavigationEvent$onPostMessage;

    const/4 v3, 0x2

    const-string v4, "ARCH_ARMV5"

    invoke-direct {v0, v4, v3, v3}, Lo/getTargetHeight$onNavigationEvent$onPostMessage;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/getTargetHeight$onNavigationEvent$onPostMessage;->ICustomTabsCallback:Lo/getTargetHeight$onNavigationEvent$onPostMessage;

    new-instance v0, Lo/getTargetHeight$onNavigationEvent$onPostMessage;

    const/4 v4, 0x3

    const/4 v5, 0x4

    const-string v6, "ARCH_ARMV7"

    invoke-direct {v0, v6, v4, v5}, Lo/getTargetHeight$onNavigationEvent$onPostMessage;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/getTargetHeight$onNavigationEvent$onPostMessage;->onMessageChannelReady:Lo/getTargetHeight$onNavigationEvent$onPostMessage;

    new-instance v0, Lo/getTargetHeight$onNavigationEvent$onPostMessage;

    const/4 v6, 0x5

    const-string v7, "ARCH_ARM64"

    invoke-direct {v0, v7, v5, v6}, Lo/getTargetHeight$onNavigationEvent$onPostMessage;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/getTargetHeight$onNavigationEvent$onPostMessage;->onPostMessage:Lo/getTargetHeight$onNavigationEvent$onPostMessage;

    new-instance v0, Lo/getTargetHeight$onNavigationEvent$onPostMessage;

    const/4 v7, 0x6

    const-string v8, "ARCH_MIPS"

    invoke-direct {v0, v8, v6, v7}, Lo/getTargetHeight$onNavigationEvent$onPostMessage;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/getTargetHeight$onNavigationEvent$onPostMessage;->asInterface:Lo/getTargetHeight$onNavigationEvent$onPostMessage;

    new-instance v0, Lo/getTargetHeight$onNavigationEvent$onPostMessage;

    const/4 v8, 0x7

    const-string v9, "ARCH_MIPS_64"

    invoke-direct {v0, v9, v7, v8}, Lo/getTargetHeight$onNavigationEvent$onPostMessage;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/getTargetHeight$onNavigationEvent$onPostMessage;->asBinder:Lo/getTargetHeight$onNavigationEvent$onPostMessage;

    new-instance v0, Lo/getTargetHeight$onNavigationEvent$onPostMessage;

    const/16 v9, 0x8

    const-string v10, "ARCH_X86"

    invoke-direct {v0, v10, v8, v9}, Lo/getTargetHeight$onNavigationEvent$onPostMessage;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/getTargetHeight$onNavigationEvent$onPostMessage;->onRelationshipValidationResult:Lo/getTargetHeight$onNavigationEvent$onPostMessage;

    new-instance v0, Lo/getTargetHeight$onNavigationEvent$onPostMessage;

    const/16 v10, 0x9

    const-string v11, "ARCH_X86_64"

    invoke-direct {v0, v11, v9, v10}, Lo/getTargetHeight$onNavigationEvent$onPostMessage;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/getTargetHeight$onNavigationEvent$onPostMessage;->onTransact:Lo/getTargetHeight$onNavigationEvent$onPostMessage;

    new-array v10, v10, [Lo/getTargetHeight$onNavigationEvent$onPostMessage;

    sget-object v11, Lo/getTargetHeight$onNavigationEvent$onPostMessage;->onNavigationEvent:Lo/getTargetHeight$onNavigationEvent$onPostMessage;

    aput-object v11, v10, v1

    sget-object v1, Lo/getTargetHeight$onNavigationEvent$onPostMessage;->extraCallback:Lo/getTargetHeight$onNavigationEvent$onPostMessage;

    aput-object v1, v10, v2

    sget-object v1, Lo/getTargetHeight$onNavigationEvent$onPostMessage;->ICustomTabsCallback:Lo/getTargetHeight$onNavigationEvent$onPostMessage;

    aput-object v1, v10, v3

    sget-object v1, Lo/getTargetHeight$onNavigationEvent$onPostMessage;->onMessageChannelReady:Lo/getTargetHeight$onNavigationEvent$onPostMessage;

    aput-object v1, v10, v4

    sget-object v1, Lo/getTargetHeight$onNavigationEvent$onPostMessage;->onPostMessage:Lo/getTargetHeight$onNavigationEvent$onPostMessage;

    aput-object v1, v10, v5

    sget-object v1, Lo/getTargetHeight$onNavigationEvent$onPostMessage;->asInterface:Lo/getTargetHeight$onNavigationEvent$onPostMessage;

    aput-object v1, v10, v6

    sget-object v1, Lo/getTargetHeight$onNavigationEvent$onPostMessage;->asBinder:Lo/getTargetHeight$onNavigationEvent$onPostMessage;

    aput-object v1, v10, v7

    sget-object v1, Lo/getTargetHeight$onNavigationEvent$onPostMessage;->onRelationshipValidationResult:Lo/getTargetHeight$onNavigationEvent$onPostMessage;

    aput-object v1, v10, v8

    aput-object v0, v10, v9

    sput-object v10, Lo/getTargetHeight$onNavigationEvent$onPostMessage;->newSession:[Lo/getTargetHeight$onNavigationEvent$onPostMessage;

    new-instance v0, Lo/getUri;

    invoke-direct {v0}, Lo/getUri;-><init>()V

    sput-object v0, Lo/getTargetHeight$onNavigationEvent$onPostMessage;->ICustomTabsCallback$Stub:Lo/setHierarchy;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lo/getTargetHeight$onNavigationEvent$onPostMessage;->ICustomTabsCallback$Stub$Proxy:I

    return-void
.end method

.method public static onMessageChannelReady(I)Lo/getTargetHeight$onNavigationEvent$onPostMessage;
    .locals 0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const/4 p0, 0x0

    return-object p0

    :pswitch_1
    sget-object p0, Lo/getTargetHeight$onNavigationEvent$onPostMessage;->onTransact:Lo/getTargetHeight$onNavigationEvent$onPostMessage;

    return-object p0

    :pswitch_2
    sget-object p0, Lo/getTargetHeight$onNavigationEvent$onPostMessage;->onRelationshipValidationResult:Lo/getTargetHeight$onNavigationEvent$onPostMessage;

    return-object p0

    :pswitch_3
    sget-object p0, Lo/getTargetHeight$onNavigationEvent$onPostMessage;->asBinder:Lo/getTargetHeight$onNavigationEvent$onPostMessage;

    return-object p0

    :pswitch_4
    sget-object p0, Lo/getTargetHeight$onNavigationEvent$onPostMessage;->asInterface:Lo/getTargetHeight$onNavigationEvent$onPostMessage;

    return-object p0

    :pswitch_5
    sget-object p0, Lo/getTargetHeight$onNavigationEvent$onPostMessage;->onPostMessage:Lo/getTargetHeight$onNavigationEvent$onPostMessage;

    return-object p0

    :pswitch_6
    sget-object p0, Lo/getTargetHeight$onNavigationEvent$onPostMessage;->onMessageChannelReady:Lo/getTargetHeight$onNavigationEvent$onPostMessage;

    return-object p0

    :pswitch_7
    sget-object p0, Lo/getTargetHeight$onNavigationEvent$onPostMessage;->ICustomTabsCallback:Lo/getTargetHeight$onNavigationEvent$onPostMessage;

    return-object p0

    :pswitch_8
    sget-object p0, Lo/getTargetHeight$onNavigationEvent$onPostMessage;->extraCallback:Lo/getTargetHeight$onNavigationEvent$onPostMessage;

    return-object p0

    :pswitch_9
    sget-object p0, Lo/getTargetHeight$onNavigationEvent$onPostMessage;->onNavigationEvent:Lo/getTargetHeight$onNavigationEvent$onPostMessage;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static onMessageChannelReady()Lo/setHierarchy;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/setHierarchy<",
            "Lo/getTargetHeight$onNavigationEvent$onPostMessage;",
            ">;"
        }
    .end annotation

    sget-object v0, Lo/getTargetHeight$onNavigationEvent$onPostMessage;->ICustomTabsCallback$Stub:Lo/setHierarchy;

    return-object v0
.end method

.method public static values()[Lo/getTargetHeight$onNavigationEvent$onPostMessage;
    .locals 1

    sget-object v0, Lo/getTargetHeight$onNavigationEvent$onPostMessage;->newSession:[Lo/getTargetHeight$onNavigationEvent$onPostMessage;

    invoke-virtual {v0}, [Lo/getTargetHeight$onNavigationEvent$onPostMessage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/getTargetHeight$onNavigationEvent$onPostMessage;

    return-object v0
.end method


# virtual methods
.method public final onNavigationEvent()I
    .locals 1

    iget v0, p0, Lo/getTargetHeight$onNavigationEvent$onPostMessage;->ICustomTabsCallback$Stub$Proxy:I

    return v0
.end method
