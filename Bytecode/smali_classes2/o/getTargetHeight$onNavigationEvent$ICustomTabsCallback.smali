.class public final enum Lo/getTargetHeight$onNavigationEvent$ICustomTabsCallback;
.super Ljava/lang/Enum;

# interfaces
.implements Lo/setController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getTargetHeight$onNavigationEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ICustomTabsCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/getTargetHeight$onNavigationEvent$ICustomTabsCallback;",
        ">;",
        "Lo/setController;"
    }
.end annotation


# static fields
.field private static final enum ICustomTabsCallback:Lo/getTargetHeight$onNavigationEvent$ICustomTabsCallback;

.field private static final enum ICustomTabsCallback$Stub:Lo/getTargetHeight$onNavigationEvent$ICustomTabsCallback;

.field private static final enum asBinder:Lo/getTargetHeight$onNavigationEvent$ICustomTabsCallback;

.field private static final enum asInterface:Lo/getTargetHeight$onNavigationEvent$ICustomTabsCallback;

.field private static final enum extraCallback:Lo/getTargetHeight$onNavigationEvent$ICustomTabsCallback;

.field private static final getInterfaceDescriptor:Lo/setHierarchy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setHierarchy<",
            "Lo/getTargetHeight$onNavigationEvent$ICustomTabsCallback;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic newSession:[Lo/getTargetHeight$onNavigationEvent$ICustomTabsCallback;

.field private static final enum onMessageChannelReady:Lo/getTargetHeight$onNavigationEvent$ICustomTabsCallback;

.field private static final enum onNavigationEvent:Lo/getTargetHeight$onNavigationEvent$ICustomTabsCallback;

.field private static final enum onPostMessage:Lo/getTargetHeight$onNavigationEvent$ICustomTabsCallback;

.field private static final enum onRelationshipValidationResult:Lo/getTargetHeight$onNavigationEvent$ICustomTabsCallback;

.field private static final enum onTransact:Lo/getTargetHeight$onNavigationEvent$ICustomTabsCallback;


# instance fields
.field private final ICustomTabsCallback$Stub$Proxy:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    new-instance v0, Lo/getTargetHeight$onNavigationEvent$ICustomTabsCallback;

    const/4 v1, 0x0

    const-string v2, "DENSITY_UNKNOWN"

    invoke-direct {v0, v2, v1, v1}, Lo/getTargetHeight$onNavigationEvent$ICustomTabsCallback;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/getTargetHeight$onNavigationEvent$ICustomTabsCallback;->onNavigationEvent:Lo/getTargetHeight$onNavigationEvent$ICustomTabsCallback;

    new-instance v0, Lo/getTargetHeight$onNavigationEvent$ICustomTabsCallback;

    const/4 v2, 0x1

    const-string v3, "DENSITY_ALLDPI"

    invoke-direct {v0, v3, v2, v2}, Lo/getTargetHeight$onNavigationEvent$ICustomTabsCallback;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/getTargetHeight$onNavigationEvent$ICustomTabsCallback;->onPostMessage:Lo/getTargetHeight$onNavigationEvent$ICustomTabsCallback;

    new-instance v0, Lo/getTargetHeight$onNavigationEvent$ICustomTabsCallback;

    const/4 v3, 0x2

    const-string v4, "DENSITY_LDPI"

    invoke-direct {v0, v4, v3, v3}, Lo/getTargetHeight$onNavigationEvent$ICustomTabsCallback;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/getTargetHeight$onNavigationEvent$ICustomTabsCallback;->extraCallback:Lo/getTargetHeight$onNavigationEvent$ICustomTabsCallback;

    new-instance v0, Lo/getTargetHeight$onNavigationEvent$ICustomTabsCallback;

    const/4 v4, 0x3

    const-string v5, "DENSITY_MDPI"

    invoke-direct {v0, v5, v4, v4}, Lo/getTargetHeight$onNavigationEvent$ICustomTabsCallback;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/getTargetHeight$onNavigationEvent$ICustomTabsCallback;->onMessageChannelReady:Lo/getTargetHeight$onNavigationEvent$ICustomTabsCallback;

    new-instance v0, Lo/getTargetHeight$onNavigationEvent$ICustomTabsCallback;

    const/4 v5, 0x4

    const-string v6, "DENSITY_TVDPI"

    invoke-direct {v0, v6, v5, v5}, Lo/getTargetHeight$onNavigationEvent$ICustomTabsCallback;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/getTargetHeight$onNavigationEvent$ICustomTabsCallback;->ICustomTabsCallback:Lo/getTargetHeight$onNavigationEvent$ICustomTabsCallback;

    new-instance v0, Lo/getTargetHeight$onNavigationEvent$ICustomTabsCallback;

    const/4 v6, 0x5

    const-string v7, "DENSITY_HDPI"

    invoke-direct {v0, v7, v6, v6}, Lo/getTargetHeight$onNavigationEvent$ICustomTabsCallback;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/getTargetHeight$onNavigationEvent$ICustomTabsCallback;->onRelationshipValidationResult:Lo/getTargetHeight$onNavigationEvent$ICustomTabsCallback;

    new-instance v0, Lo/getTargetHeight$onNavigationEvent$ICustomTabsCallback;

    const/4 v7, 0x6

    const/4 v8, 0x7

    const-string v9, "DENSITY_XHDPI"

    invoke-direct {v0, v9, v7, v8}, Lo/getTargetHeight$onNavigationEvent$ICustomTabsCallback;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/getTargetHeight$onNavigationEvent$ICustomTabsCallback;->asBinder:Lo/getTargetHeight$onNavigationEvent$ICustomTabsCallback;

    new-instance v0, Lo/getTargetHeight$onNavigationEvent$ICustomTabsCallback;

    const/16 v9, 0x8

    const-string v10, "DENSITY_DPI400"

    invoke-direct {v0, v10, v8, v9}, Lo/getTargetHeight$onNavigationEvent$ICustomTabsCallback;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/getTargetHeight$onNavigationEvent$ICustomTabsCallback;->onTransact:Lo/getTargetHeight$onNavigationEvent$ICustomTabsCallback;

    new-instance v0, Lo/getTargetHeight$onNavigationEvent$ICustomTabsCallback;

    const/16 v10, 0x9

    const-string v11, "DENSITY_XXHDPI"

    invoke-direct {v0, v11, v9, v10}, Lo/getTargetHeight$onNavigationEvent$ICustomTabsCallback;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/getTargetHeight$onNavigationEvent$ICustomTabsCallback;->asInterface:Lo/getTargetHeight$onNavigationEvent$ICustomTabsCallback;

    new-instance v0, Lo/getTargetHeight$onNavigationEvent$ICustomTabsCallback;

    const/16 v11, 0xa

    const-string v12, "DENSITY_XXXHDPI"

    invoke-direct {v0, v12, v10, v11}, Lo/getTargetHeight$onNavigationEvent$ICustomTabsCallback;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/getTargetHeight$onNavigationEvent$ICustomTabsCallback;->ICustomTabsCallback$Stub:Lo/getTargetHeight$onNavigationEvent$ICustomTabsCallback;

    new-array v11, v11, [Lo/getTargetHeight$onNavigationEvent$ICustomTabsCallback;

    sget-object v12, Lo/getTargetHeight$onNavigationEvent$ICustomTabsCallback;->onNavigationEvent:Lo/getTargetHeight$onNavigationEvent$ICustomTabsCallback;

    aput-object v12, v11, v1

    sget-object v1, Lo/getTargetHeight$onNavigationEvent$ICustomTabsCallback;->onPostMessage:Lo/getTargetHeight$onNavigationEvent$ICustomTabsCallback;

    aput-object v1, v11, v2

    sget-object v1, Lo/getTargetHeight$onNavigationEvent$ICustomTabsCallback;->extraCallback:Lo/getTargetHeight$onNavigationEvent$ICustomTabsCallback;

    aput-object v1, v11, v3

    sget-object v1, Lo/getTargetHeight$onNavigationEvent$ICustomTabsCallback;->onMessageChannelReady:Lo/getTargetHeight$onNavigationEvent$ICustomTabsCallback;

    aput-object v1, v11, v4

    sget-object v1, Lo/getTargetHeight$onNavigationEvent$ICustomTabsCallback;->ICustomTabsCallback:Lo/getTargetHeight$onNavigationEvent$ICustomTabsCallback;

    aput-object v1, v11, v5

    sget-object v1, Lo/getTargetHeight$onNavigationEvent$ICustomTabsCallback;->onRelationshipValidationResult:Lo/getTargetHeight$onNavigationEvent$ICustomTabsCallback;

    aput-object v1, v11, v6

    sget-object v1, Lo/getTargetHeight$onNavigationEvent$ICustomTabsCallback;->asBinder:Lo/getTargetHeight$onNavigationEvent$ICustomTabsCallback;

    aput-object v1, v11, v7

    sget-object v1, Lo/getTargetHeight$onNavigationEvent$ICustomTabsCallback;->onTransact:Lo/getTargetHeight$onNavigationEvent$ICustomTabsCallback;

    aput-object v1, v11, v8

    sget-object v1, Lo/getTargetHeight$onNavigationEvent$ICustomTabsCallback;->asInterface:Lo/getTargetHeight$onNavigationEvent$ICustomTabsCallback;

    aput-object v1, v11, v9

    aput-object v0, v11, v10

    sput-object v11, Lo/getTargetHeight$onNavigationEvent$ICustomTabsCallback;->newSession:[Lo/getTargetHeight$onNavigationEvent$ICustomTabsCallback;

    new-instance v0, Lo/getTargetWidth;

    invoke-direct {v0}, Lo/getTargetWidth;-><init>()V

    sput-object v0, Lo/getTargetHeight$onNavigationEvent$ICustomTabsCallback;->getInterfaceDescriptor:Lo/setHierarchy;

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

    iput p3, p0, Lo/getTargetHeight$onNavigationEvent$ICustomTabsCallback;->ICustomTabsCallback$Stub$Proxy:I

    return-void
.end method

.method public static extraCallback(I)Lo/getTargetHeight$onNavigationEvent$ICustomTabsCallback;
    .locals 0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const/4 p0, 0x0

    return-object p0

    :pswitch_1
    sget-object p0, Lo/getTargetHeight$onNavigationEvent$ICustomTabsCallback;->ICustomTabsCallback$Stub:Lo/getTargetHeight$onNavigationEvent$ICustomTabsCallback;

    return-object p0

    :pswitch_2
    sget-object p0, Lo/getTargetHeight$onNavigationEvent$ICustomTabsCallback;->asInterface:Lo/getTargetHeight$onNavigationEvent$ICustomTabsCallback;

    return-object p0

    :pswitch_3
    sget-object p0, Lo/getTargetHeight$onNavigationEvent$ICustomTabsCallback;->onTransact:Lo/getTargetHeight$onNavigationEvent$ICustomTabsCallback;

    return-object p0

    :pswitch_4
    sget-object p0, Lo/getTargetHeight$onNavigationEvent$ICustomTabsCallback;->asBinder:Lo/getTargetHeight$onNavigationEvent$ICustomTabsCallback;

    return-object p0

    :pswitch_5
    sget-object p0, Lo/getTargetHeight$onNavigationEvent$ICustomTabsCallback;->onRelationshipValidationResult:Lo/getTargetHeight$onNavigationEvent$ICustomTabsCallback;

    return-object p0

    :pswitch_6
    sget-object p0, Lo/getTargetHeight$onNavigationEvent$ICustomTabsCallback;->ICustomTabsCallback:Lo/getTargetHeight$onNavigationEvent$ICustomTabsCallback;

    return-object p0

    :pswitch_7
    sget-object p0, Lo/getTargetHeight$onNavigationEvent$ICustomTabsCallback;->onMessageChannelReady:Lo/getTargetHeight$onNavigationEvent$ICustomTabsCallback;

    return-object p0

    :pswitch_8
    sget-object p0, Lo/getTargetHeight$onNavigationEvent$ICustomTabsCallback;->extraCallback:Lo/getTargetHeight$onNavigationEvent$ICustomTabsCallback;

    return-object p0

    :pswitch_9
    sget-object p0, Lo/getTargetHeight$onNavigationEvent$ICustomTabsCallback;->onPostMessage:Lo/getTargetHeight$onNavigationEvent$ICustomTabsCallback;

    return-object p0

    :pswitch_a
    sget-object p0, Lo/getTargetHeight$onNavigationEvent$ICustomTabsCallback;->onNavigationEvent:Lo/getTargetHeight$onNavigationEvent$ICustomTabsCallback;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static onPostMessage()Lo/setHierarchy;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/setHierarchy<",
            "Lo/getTargetHeight$onNavigationEvent$ICustomTabsCallback;",
            ">;"
        }
    .end annotation

    sget-object v0, Lo/getTargetHeight$onNavigationEvent$ICustomTabsCallback;->getInterfaceDescriptor:Lo/setHierarchy;

    return-object v0
.end method

.method public static values()[Lo/getTargetHeight$onNavigationEvent$ICustomTabsCallback;
    .locals 1

    sget-object v0, Lo/getTargetHeight$onNavigationEvent$ICustomTabsCallback;->newSession:[Lo/getTargetHeight$onNavigationEvent$ICustomTabsCallback;

    invoke-virtual {v0}, [Lo/getTargetHeight$onNavigationEvent$ICustomTabsCallback;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/getTargetHeight$onNavigationEvent$ICustomTabsCallback;

    return-object v0
.end method


# virtual methods
.method public final onNavigationEvent()I
    .locals 1

    iget v0, p0, Lo/getTargetHeight$onNavigationEvent$ICustomTabsCallback;->ICustomTabsCallback$Stub$Proxy:I

    return v0
.end method
