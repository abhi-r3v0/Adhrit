.class public final enum Lo/SessionFiles$onPostMessage;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/SessionFiles;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "onPostMessage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/SessionFiles$onPostMessage;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ICustomTabsCallback:Lo/SessionFiles$onPostMessage;

.field public static final enum ICustomTabsCallback$Stub:Lo/SessionFiles$onPostMessage;

.field public static final enum asBinder:Lo/SessionFiles$onPostMessage;

.field public static final enum asInterface:Lo/SessionFiles$onPostMessage;

.field public static final enum extraCallback:Lo/SessionFiles$onPostMessage;

.field public static final enum onMessageChannelReady:Lo/SessionFiles$onPostMessage;

.field public static final enum onNavigationEvent:Lo/SessionFiles$onPostMessage;

.field public static final enum onPostMessage:Lo/SessionFiles$onPostMessage;

.field public static final enum onRelationshipValidationResult:Lo/SessionFiles$onPostMessage;

.field public static final enum onTransact:Lo/SessionFiles$onPostMessage;

.field private static final synthetic warmup:[Lo/SessionFiles$onPostMessage;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 555
    new-instance v0, Lo/SessionFiles$onPostMessage;

    const/4 v1, 0x0

    const-string v2, "BEGIN_ARRAY"

    invoke-direct {v0, v2, v1}, Lo/SessionFiles$onPostMessage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/SessionFiles$onPostMessage;->onNavigationEvent:Lo/SessionFiles$onPostMessage;

    .line 561
    new-instance v0, Lo/SessionFiles$onPostMessage;

    const/4 v2, 0x1

    const-string v3, "END_ARRAY"

    invoke-direct {v0, v3, v2}, Lo/SessionFiles$onPostMessage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/SessionFiles$onPostMessage;->onMessageChannelReady:Lo/SessionFiles$onPostMessage;

    .line 567
    new-instance v0, Lo/SessionFiles$onPostMessage;

    const/4 v3, 0x2

    const-string v4, "BEGIN_OBJECT"

    invoke-direct {v0, v4, v3}, Lo/SessionFiles$onPostMessage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/SessionFiles$onPostMessage;->onPostMessage:Lo/SessionFiles$onPostMessage;

    .line 573
    new-instance v0, Lo/SessionFiles$onPostMessage;

    const/4 v4, 0x3

    const-string v5, "END_OBJECT"

    invoke-direct {v0, v5, v4}, Lo/SessionFiles$onPostMessage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/SessionFiles$onPostMessage;->extraCallback:Lo/SessionFiles$onPostMessage;

    .line 580
    new-instance v0, Lo/SessionFiles$onPostMessage;

    const/4 v5, 0x4

    const-string v6, "NAME"

    invoke-direct {v0, v6, v5}, Lo/SessionFiles$onPostMessage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/SessionFiles$onPostMessage;->ICustomTabsCallback:Lo/SessionFiles$onPostMessage;

    .line 585
    new-instance v0, Lo/SessionFiles$onPostMessage;

    const/4 v6, 0x5

    const-string v7, "STRING"

    invoke-direct {v0, v7, v6}, Lo/SessionFiles$onPostMessage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/SessionFiles$onPostMessage;->onRelationshipValidationResult:Lo/SessionFiles$onPostMessage;

    .line 591
    new-instance v0, Lo/SessionFiles$onPostMessage;

    const/4 v7, 0x6

    const-string v8, "NUMBER"

    invoke-direct {v0, v8, v7}, Lo/SessionFiles$onPostMessage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/SessionFiles$onPostMessage;->ICustomTabsCallback$Stub:Lo/SessionFiles$onPostMessage;

    .line 596
    new-instance v0, Lo/SessionFiles$onPostMessage;

    const/4 v8, 0x7

    const-string v9, "BOOLEAN"

    invoke-direct {v0, v9, v8}, Lo/SessionFiles$onPostMessage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/SessionFiles$onPostMessage;->asInterface:Lo/SessionFiles$onPostMessage;

    .line 601
    new-instance v0, Lo/SessionFiles$onPostMessage;

    const/16 v9, 0x8

    const-string v10, "NULL"

    invoke-direct {v0, v10, v9}, Lo/SessionFiles$onPostMessage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/SessionFiles$onPostMessage;->onTransact:Lo/SessionFiles$onPostMessage;

    .line 608
    new-instance v0, Lo/SessionFiles$onPostMessage;

    const/16 v10, 0x9

    const-string v11, "END_DOCUMENT"

    invoke-direct {v0, v11, v10}, Lo/SessionFiles$onPostMessage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/SessionFiles$onPostMessage;->asBinder:Lo/SessionFiles$onPostMessage;

    const/16 v11, 0xa

    new-array v11, v11, [Lo/SessionFiles$onPostMessage;

    .line 549
    sget-object v12, Lo/SessionFiles$onPostMessage;->onNavigationEvent:Lo/SessionFiles$onPostMessage;

    aput-object v12, v11, v1

    sget-object v1, Lo/SessionFiles$onPostMessage;->onMessageChannelReady:Lo/SessionFiles$onPostMessage;

    aput-object v1, v11, v2

    sget-object v1, Lo/SessionFiles$onPostMessage;->onPostMessage:Lo/SessionFiles$onPostMessage;

    aput-object v1, v11, v3

    sget-object v1, Lo/SessionFiles$onPostMessage;->extraCallback:Lo/SessionFiles$onPostMessage;

    aput-object v1, v11, v4

    sget-object v1, Lo/SessionFiles$onPostMessage;->ICustomTabsCallback:Lo/SessionFiles$onPostMessage;

    aput-object v1, v11, v5

    sget-object v1, Lo/SessionFiles$onPostMessage;->onRelationshipValidationResult:Lo/SessionFiles$onPostMessage;

    aput-object v1, v11, v6

    sget-object v1, Lo/SessionFiles$onPostMessage;->ICustomTabsCallback$Stub:Lo/SessionFiles$onPostMessage;

    aput-object v1, v11, v7

    sget-object v1, Lo/SessionFiles$onPostMessage;->asInterface:Lo/SessionFiles$onPostMessage;

    aput-object v1, v11, v8

    sget-object v1, Lo/SessionFiles$onPostMessage;->onTransact:Lo/SessionFiles$onPostMessage;

    aput-object v1, v11, v9

    aput-object v0, v11, v10

    sput-object v11, Lo/SessionFiles$onPostMessage;->warmup:[Lo/SessionFiles$onPostMessage;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 549
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lo/SessionFiles$onPostMessage;
    .locals 1

    .line 549
    const-class v0, Lo/SessionFiles$onPostMessage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lo/SessionFiles$onPostMessage;

    return-object p0
.end method

.method public static values()[Lo/SessionFiles$onPostMessage;
    .locals 1

    .line 549
    sget-object v0, Lo/SessionFiles$onPostMessage;->warmup:[Lo/SessionFiles$onPostMessage;

    invoke-virtual {v0}, [Lo/SessionFiles$onPostMessage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/SessionFiles$onPostMessage;

    return-object v0
.end method
