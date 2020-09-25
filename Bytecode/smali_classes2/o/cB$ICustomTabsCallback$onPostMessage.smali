.class public final enum Lo/cB$ICustomTabsCallback$onPostMessage;
.super Ljava/lang/Enum;
.source ""

# interfaces
.implements Lo/eV;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/cB$ICustomTabsCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "onPostMessage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/cB$ICustomTabsCallback$onPostMessage;",
        ">;",
        "Lo/eV;"
    }
.end annotation


# static fields
.field public static final enum ICustomTabsCallback:Lo/cB$ICustomTabsCallback$onPostMessage;

.field private static final asBinder:Lo/fc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/fc<",
            "Lo/cB$ICustomTabsCallback$onPostMessage;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum extraCallback:Lo/cB$ICustomTabsCallback$onPostMessage;

.field public static final enum onMessageChannelReady:Lo/cB$ICustomTabsCallback$onPostMessage;

.field public static final enum onNavigationEvent:Lo/cB$ICustomTabsCallback$onPostMessage;

.field public static final enum onPostMessage:Lo/cB$ICustomTabsCallback$onPostMessage;

.field private static final synthetic onTransact:[Lo/cB$ICustomTabsCallback$onPostMessage;


# instance fields
.field private final asInterface:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 24
    new-instance v0, Lo/cB$ICustomTabsCallback$onPostMessage;

    const/4 v1, 0x0

    const-string v2, "UNKNOWN_COMPARISON_TYPE"

    invoke-direct {v0, v2, v1, v1}, Lo/cB$ICustomTabsCallback$onPostMessage;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/cB$ICustomTabsCallback$onPostMessage;->onPostMessage:Lo/cB$ICustomTabsCallback$onPostMessage;

    .line 25
    new-instance v0, Lo/cB$ICustomTabsCallback$onPostMessage;

    const/4 v2, 0x1

    const-string v3, "LESS_THAN"

    invoke-direct {v0, v3, v2, v2}, Lo/cB$ICustomTabsCallback$onPostMessage;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/cB$ICustomTabsCallback$onPostMessage;->onNavigationEvent:Lo/cB$ICustomTabsCallback$onPostMessage;

    .line 26
    new-instance v0, Lo/cB$ICustomTabsCallback$onPostMessage;

    const/4 v3, 0x2

    const-string v4, "GREATER_THAN"

    invoke-direct {v0, v4, v3, v3}, Lo/cB$ICustomTabsCallback$onPostMessage;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/cB$ICustomTabsCallback$onPostMessage;->extraCallback:Lo/cB$ICustomTabsCallback$onPostMessage;

    .line 27
    new-instance v0, Lo/cB$ICustomTabsCallback$onPostMessage;

    const/4 v4, 0x3

    const-string v5, "EQUAL"

    invoke-direct {v0, v5, v4, v4}, Lo/cB$ICustomTabsCallback$onPostMessage;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/cB$ICustomTabsCallback$onPostMessage;->ICustomTabsCallback:Lo/cB$ICustomTabsCallback$onPostMessage;

    .line 28
    new-instance v0, Lo/cB$ICustomTabsCallback$onPostMessage;

    const/4 v5, 0x4

    const-string v6, "BETWEEN"

    invoke-direct {v0, v6, v5, v5}, Lo/cB$ICustomTabsCallback$onPostMessage;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/cB$ICustomTabsCallback$onPostMessage;->onMessageChannelReady:Lo/cB$ICustomTabsCallback$onPostMessage;

    const/4 v6, 0x5

    new-array v6, v6, [Lo/cB$ICustomTabsCallback$onPostMessage;

    .line 29
    sget-object v7, Lo/cB$ICustomTabsCallback$onPostMessage;->onPostMessage:Lo/cB$ICustomTabsCallback$onPostMessage;

    aput-object v7, v6, v1

    sget-object v1, Lo/cB$ICustomTabsCallback$onPostMessage;->onNavigationEvent:Lo/cB$ICustomTabsCallback$onPostMessage;

    aput-object v1, v6, v2

    sget-object v1, Lo/cB$ICustomTabsCallback$onPostMessage;->extraCallback:Lo/cB$ICustomTabsCallback$onPostMessage;

    aput-object v1, v6, v3

    sget-object v1, Lo/cB$ICustomTabsCallback$onPostMessage;->ICustomTabsCallback:Lo/cB$ICustomTabsCallback$onPostMessage;

    aput-object v1, v6, v4

    aput-object v0, v6, v5

    sput-object v6, Lo/cB$ICustomTabsCallback$onPostMessage;->onTransact:[Lo/cB$ICustomTabsCallback$onPostMessage;

    .line 30
    new-instance v0, Lo/cE;

    invoke-direct {v0}, Lo/cE;-><init>()V

    sput-object v0, Lo/cB$ICustomTabsCallback$onPostMessage;->asBinder:Lo/fc;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 22
    iput p3, p0, Lo/cB$ICustomTabsCallback$onPostMessage;->asInterface:I

    return-void
.end method

.method public static onNavigationEvent()Lo/fI;
    .locals 1

    .line 10
    sget-object v0, Lo/cA;->onMessageChannelReady:Lo/fI;

    return-object v0
.end method

.method public static onPostMessage(I)Lo/cB$ICustomTabsCallback$onPostMessage;
    .locals 1

    if-eqz p0, :cond_4

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 8
    :cond_0
    sget-object p0, Lo/cB$ICustomTabsCallback$onPostMessage;->onMessageChannelReady:Lo/cB$ICustomTabsCallback$onPostMessage;

    return-object p0

    .line 7
    :cond_1
    sget-object p0, Lo/cB$ICustomTabsCallback$onPostMessage;->ICustomTabsCallback:Lo/cB$ICustomTabsCallback$onPostMessage;

    return-object p0

    .line 6
    :cond_2
    sget-object p0, Lo/cB$ICustomTabsCallback$onPostMessage;->extraCallback:Lo/cB$ICustomTabsCallback$onPostMessage;

    return-object p0

    .line 5
    :cond_3
    sget-object p0, Lo/cB$ICustomTabsCallback$onPostMessage;->onNavigationEvent:Lo/cB$ICustomTabsCallback$onPostMessage;

    return-object p0

    .line 4
    :cond_4
    sget-object p0, Lo/cB$ICustomTabsCallback$onPostMessage;->onPostMessage:Lo/cB$ICustomTabsCallback$onPostMessage;

    return-object p0
.end method

.method public static values()[Lo/cB$ICustomTabsCallback$onPostMessage;
    .locals 1

    .line 1
    sget-object v0, Lo/cB$ICustomTabsCallback$onPostMessage;->onTransact:[Lo/cB$ICustomTabsCallback$onPostMessage;

    invoke-virtual {v0}, [Lo/cB$ICustomTabsCallback$onPostMessage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/cB$ICustomTabsCallback$onPostMessage;

    return-object v0
.end method


# virtual methods
.method public final extraCallback()I
    .locals 1

    .line 2
    iget v0, p0, Lo/cB$ICustomTabsCallback$onPostMessage;->asInterface:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 13
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    .line 14
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " number="

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    iget v1, p0, Lo/cB$ICustomTabsCallback$onPostMessage;->asInterface:I

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " name="

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {p0}, Lo/cB$ICustomTabsCallback$onPostMessage;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
