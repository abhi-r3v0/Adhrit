.class public final enum Lo/k;
.super Ljava/lang/Enum;
.source ""

# interfaces
.implements Lo/fV;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/k;",
        ">;",
        "Lo/fV;"
    }
.end annotation


# static fields
.field private static final enum ICustomTabsCallback:Lo/k;

.field private static final ICustomTabsCallback$Stub:Lo/onItemLongClick;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/onItemLongClick<",
            "Lo/k;",
            ">;"
        }
    .end annotation
.end field

.field private static final enum extraCallback:Lo/k;

.field private static final enum onMessageChannelReady:Lo/k;

.field private static final enum onNavigationEvent:Lo/k;

.field private static final enum onPostMessage:Lo/k;

.field private static final synthetic onTransact:[Lo/k;


# instance fields
.field private final onRelationshipValidationResult:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 15
    new-instance v0, Lo/k;

    const/4 v1, 0x0

    const-string v2, "EFFECTIVE_CONNECTION_TYPE_UNKNOWN"

    invoke-direct {v0, v2, v1, v1}, Lo/k;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/k;->extraCallback:Lo/k;

    .line 16
    new-instance v0, Lo/k;

    const/4 v2, 0x1

    const-string v3, "EFFECTIVE_CONNECTION_TYPE_SLOW_2G"

    invoke-direct {v0, v3, v2, v2}, Lo/k;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/k;->onPostMessage:Lo/k;

    .line 17
    new-instance v0, Lo/k;

    const/4 v3, 0x2

    const-string v4, "EFFECTIVE_CONNECTION_TYPE_2G"

    invoke-direct {v0, v4, v3, v3}, Lo/k;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/k;->onMessageChannelReady:Lo/k;

    .line 18
    new-instance v0, Lo/k;

    const/4 v4, 0x3

    const-string v5, "EFFECTIVE_CONNECTION_TYPE_3G"

    invoke-direct {v0, v5, v4, v4}, Lo/k;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/k;->ICustomTabsCallback:Lo/k;

    .line 19
    new-instance v0, Lo/k;

    const/4 v5, 0x4

    const-string v6, "EFFECTIVE_CONNECTION_TYPE_4G"

    invoke-direct {v0, v6, v5, v5}, Lo/k;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/k;->onNavigationEvent:Lo/k;

    const/4 v6, 0x5

    new-array v6, v6, [Lo/k;

    .line 20
    sget-object v7, Lo/k;->extraCallback:Lo/k;

    aput-object v7, v6, v1

    sget-object v1, Lo/k;->onPostMessage:Lo/k;

    aput-object v1, v6, v2

    sget-object v1, Lo/k;->onMessageChannelReady:Lo/k;

    aput-object v1, v6, v3

    sget-object v1, Lo/k;->ICustomTabsCallback:Lo/k;

    aput-object v1, v6, v4

    aput-object v0, v6, v5

    sput-object v6, Lo/k;->onTransact:[Lo/k;

    .line 21
    new-instance v0, Lo/onLoadFinished;

    invoke-direct {v0}, Lo/onLoadFinished;-><init>()V

    sput-object v0, Lo/k;->ICustomTabsCallback$Stub:Lo/onItemLongClick;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 13
    iput p3, p0, Lo/k;->onRelationshipValidationResult:I

    return-void
.end method

.method public static ICustomTabsCallback()Lo/ConversationDetailActivity$11;
    .locals 1

    .line 3
    sget-object v0, Lo/m;->onMessageChannelReady:Lo/ConversationDetailActivity$11;

    return-object v0
.end method

.method public static values()[Lo/k;
    .locals 1

    .line 1
    sget-object v0, Lo/k;->onTransact:[Lo/k;

    invoke-virtual {v0}, [Lo/k;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/k;

    return-object v0
.end method


# virtual methods
.method public final onMessageChannelReady()I
    .locals 1

    .line 2
    iget v0, p0, Lo/k;->onRelationshipValidationResult:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 6
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    .line 7
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " number="

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lo/k;->onMessageChannelReady()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " name="

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    invoke-virtual {p0}, Lo/k;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
