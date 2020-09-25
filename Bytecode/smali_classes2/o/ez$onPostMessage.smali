.class public final enum Lo/ez$onPostMessage;
.super Ljava/lang/Enum;
.source ""

# interfaces
.implements Lo/fV;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ez;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "onPostMessage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/ez$onPostMessage;",
        ">;",
        "Lo/fV;"
    }
.end annotation


# static fields
.field private static final enum ICustomTabsCallback:Lo/ez$onPostMessage;

.field private static final synthetic extraCallback:[Lo/ez$onPostMessage;

.field private static final onMessageChannelReady:Lo/onItemLongClick;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/onItemLongClick<",
            "Lo/ez$onPostMessage;",
            ">;"
        }
    .end annotation
.end field

.field private static final enum onPostMessage:Lo/ez$onPostMessage;


# instance fields
.field private final onNavigationEvent:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 15
    new-instance v0, Lo/ez$onPostMessage;

    const/4 v1, 0x0

    const-string v2, "SOURCE_UNKNOWN"

    invoke-direct {v0, v2, v1, v1}, Lo/ez$onPostMessage;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/ez$onPostMessage;->ICustomTabsCallback:Lo/ez$onPostMessage;

    .line 16
    new-instance v0, Lo/ez$onPostMessage;

    const/4 v2, 0x1

    const-string v3, "FL_LEGACY_V1"

    invoke-direct {v0, v3, v2, v2}, Lo/ez$onPostMessage;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/ez$onPostMessage;->onPostMessage:Lo/ez$onPostMessage;

    const/4 v3, 0x2

    new-array v3, v3, [Lo/ez$onPostMessage;

    .line 17
    sget-object v4, Lo/ez$onPostMessage;->ICustomTabsCallback:Lo/ez$onPostMessage;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lo/ez$onPostMessage;->extraCallback:[Lo/ez$onPostMessage;

    .line 18
    new-instance v0, Lo/F;

    invoke-direct {v0}, Lo/F;-><init>()V

    sput-object v0, Lo/ez$onPostMessage;->onMessageChannelReady:Lo/onItemLongClick;

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
    iput p3, p0, Lo/ez$onPostMessage;->onNavigationEvent:I

    return-void
.end method

.method public static extraCallback()Lo/ConversationDetailActivity$11;
    .locals 1

    .line 3
    sget-object v0, Lo/CategoryListActivity$2;->onMessageChannelReady:Lo/ConversationDetailActivity$11;

    return-object v0
.end method

.method public static values()[Lo/ez$onPostMessage;
    .locals 1

    .line 1
    sget-object v0, Lo/ez$onPostMessage;->extraCallback:[Lo/ez$onPostMessage;

    invoke-virtual {v0}, [Lo/ez$onPostMessage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/ez$onPostMessage;

    return-object v0
.end method


# virtual methods
.method public final onMessageChannelReady()I
    .locals 1

    .line 2
    iget v0, p0, Lo/ez$onPostMessage;->onNavigationEvent:I

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

    invoke-virtual {p0}, Lo/ez$onPostMessage;->onMessageChannelReady()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " name="

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    invoke-virtual {p0}, Lo/ez$onPostMessage;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
