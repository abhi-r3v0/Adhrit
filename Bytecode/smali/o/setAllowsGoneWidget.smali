.class public final enum Lo/setAllowsGoneWidget;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/setAllowsGoneWidget;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ICustomTabsCallback:Lo/setAllowsGoneWidget;

.field private static final synthetic asInterface:[Lo/setAllowsGoneWidget;

.field public static final enum onMessageChannelReady:Lo/setAllowsGoneWidget;

.field public static final enum onNavigationEvent:Lo/setAllowsGoneWidget;

.field public static final enum onPostMessage:Lo/setAllowsGoneWidget;


# instance fields
.field public final ICustomTabsCallback$Stub:I

.field public final extraCallback:I

.field public final onRelationshipValidationResult:I

.field public final onTransact:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 12
    new-instance v6, Lo/setAllowsGoneWidget;

    const-string v1, "SELECT"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0xa4

    const/4 v5, 0x4

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lo/setAllowsGoneWidget;-><init>(Ljava/lang/String;IIII)V

    sput-object v6, Lo/setAllowsGoneWidget;->ICustomTabsCallback:Lo/setAllowsGoneWidget;

    .line 17
    new-instance v0, Lo/setAllowsGoneWidget;

    const-string v8, "READ_RECORD"

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/16 v11, 0xb2

    const/4 v12, 0x0

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lo/setAllowsGoneWidget;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lo/setAllowsGoneWidget;->onNavigationEvent:Lo/setAllowsGoneWidget;

    .line 22
    new-instance v0, Lo/setAllowsGoneWidget;

    const-string v2, "GPO"

    const/4 v3, 0x2

    const/16 v4, 0x80

    const/16 v5, 0xa8

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lo/setAllowsGoneWidget;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lo/setAllowsGoneWidget;->onMessageChannelReady:Lo/setAllowsGoneWidget;

    .line 27
    new-instance v0, Lo/setAllowsGoneWidget;

    const-string v8, "GET_DATA"

    const/4 v9, 0x3

    const/16 v10, 0x80

    const/16 v11, 0xca

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lo/setAllowsGoneWidget;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lo/setAllowsGoneWidget;->onPostMessage:Lo/setAllowsGoneWidget;

    const/4 v1, 0x4

    new-array v1, v1, [Lo/setAllowsGoneWidget;

    .line 7
    sget-object v2, Lo/setAllowsGoneWidget;->ICustomTabsCallback:Lo/setAllowsGoneWidget;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lo/setAllowsGoneWidget;->onNavigationEvent:Lo/setAllowsGoneWidget;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    sget-object v2, Lo/setAllowsGoneWidget;->onMessageChannelReady:Lo/setAllowsGoneWidget;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const/4 v2, 0x3

    aput-object v0, v1, v2

    sput-object v1, Lo/setAllowsGoneWidget;->asInterface:[Lo/setAllowsGoneWidget;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIII)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)V"
        }
    .end annotation

    .line 61
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 62
    iput p3, p0, Lo/setAllowsGoneWidget;->extraCallback:I

    .line 63
    iput p4, p0, Lo/setAllowsGoneWidget;->ICustomTabsCallback$Stub:I

    .line 64
    iput p5, p0, Lo/setAllowsGoneWidget;->onTransact:I

    const/4 p1, 0x0

    .line 65
    iput p1, p0, Lo/setAllowsGoneWidget;->onRelationshipValidationResult:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lo/setAllowsGoneWidget;
    .locals 1

    .line 7
    const-class v0, Lo/setAllowsGoneWidget;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lo/setAllowsGoneWidget;

    return-object p0
.end method

.method public static values()[Lo/setAllowsGoneWidget;
    .locals 1

    .line 7
    sget-object v0, Lo/setAllowsGoneWidget;->asInterface:[Lo/setAllowsGoneWidget;

    invoke-virtual {v0}, [Lo/setAllowsGoneWidget;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/setAllowsGoneWidget;

    return-object v0
.end method
