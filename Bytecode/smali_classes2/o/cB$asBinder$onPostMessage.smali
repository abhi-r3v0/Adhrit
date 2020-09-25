.class public final enum Lo/cB$asBinder$onPostMessage;
.super Ljava/lang/Enum;
.source ""

# interfaces
.implements Lo/eV;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/cB$asBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "onPostMessage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/cB$asBinder$onPostMessage;",
        ">;",
        "Lo/eV;"
    }
.end annotation


# static fields
.field public static final enum ICustomTabsCallback:Lo/cB$asBinder$onPostMessage;

.field private static final ICustomTabsCallback$Stub:Lo/fc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/fc<",
            "Lo/cB$asBinder$onPostMessage;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum asBinder:Lo/cB$asBinder$onPostMessage;

.field public static final enum asInterface:Lo/cB$asBinder$onPostMessage;

.field public static final enum extraCallback:Lo/cB$asBinder$onPostMessage;

.field public static final enum onMessageChannelReady:Lo/cB$asBinder$onPostMessage;

.field public static final enum onNavigationEvent:Lo/cB$asBinder$onPostMessage;

.field public static final enum onPostMessage:Lo/cB$asBinder$onPostMessage;

.field private static final synthetic onRelationshipValidationResult:[Lo/cB$asBinder$onPostMessage;


# instance fields
.field private final onTransact:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 26
    new-instance v0, Lo/cB$asBinder$onPostMessage;

    const/4 v1, 0x0

    const-string v2, "UNKNOWN_MATCH_TYPE"

    invoke-direct {v0, v2, v1, v1}, Lo/cB$asBinder$onPostMessage;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/cB$asBinder$onPostMessage;->extraCallback:Lo/cB$asBinder$onPostMessage;

    .line 27
    new-instance v0, Lo/cB$asBinder$onPostMessage;

    const/4 v2, 0x1

    const-string v3, "REGEXP"

    invoke-direct {v0, v3, v2, v2}, Lo/cB$asBinder$onPostMessage;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/cB$asBinder$onPostMessage;->onPostMessage:Lo/cB$asBinder$onPostMessage;

    .line 28
    new-instance v0, Lo/cB$asBinder$onPostMessage;

    const/4 v3, 0x2

    const-string v4, "BEGINS_WITH"

    invoke-direct {v0, v4, v3, v3}, Lo/cB$asBinder$onPostMessage;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/cB$asBinder$onPostMessage;->onMessageChannelReady:Lo/cB$asBinder$onPostMessage;

    .line 29
    new-instance v0, Lo/cB$asBinder$onPostMessage;

    const/4 v4, 0x3

    const-string v5, "ENDS_WITH"

    invoke-direct {v0, v5, v4, v4}, Lo/cB$asBinder$onPostMessage;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/cB$asBinder$onPostMessage;->onNavigationEvent:Lo/cB$asBinder$onPostMessage;

    .line 30
    new-instance v0, Lo/cB$asBinder$onPostMessage;

    const/4 v5, 0x4

    const-string v6, "PARTIAL"

    invoke-direct {v0, v6, v5, v5}, Lo/cB$asBinder$onPostMessage;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/cB$asBinder$onPostMessage;->ICustomTabsCallback:Lo/cB$asBinder$onPostMessage;

    .line 31
    new-instance v0, Lo/cB$asBinder$onPostMessage;

    const/4 v6, 0x5

    const-string v7, "EXACT"

    invoke-direct {v0, v7, v6, v6}, Lo/cB$asBinder$onPostMessage;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/cB$asBinder$onPostMessage;->asBinder:Lo/cB$asBinder$onPostMessage;

    .line 32
    new-instance v0, Lo/cB$asBinder$onPostMessage;

    const/4 v7, 0x6

    const-string v8, "IN_LIST"

    invoke-direct {v0, v8, v7, v7}, Lo/cB$asBinder$onPostMessage;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/cB$asBinder$onPostMessage;->asInterface:Lo/cB$asBinder$onPostMessage;

    const/4 v8, 0x7

    new-array v8, v8, [Lo/cB$asBinder$onPostMessage;

    .line 33
    sget-object v9, Lo/cB$asBinder$onPostMessage;->extraCallback:Lo/cB$asBinder$onPostMessage;

    aput-object v9, v8, v1

    sget-object v1, Lo/cB$asBinder$onPostMessage;->onPostMessage:Lo/cB$asBinder$onPostMessage;

    aput-object v1, v8, v2

    sget-object v1, Lo/cB$asBinder$onPostMessage;->onMessageChannelReady:Lo/cB$asBinder$onPostMessage;

    aput-object v1, v8, v3

    sget-object v1, Lo/cB$asBinder$onPostMessage;->onNavigationEvent:Lo/cB$asBinder$onPostMessage;

    aput-object v1, v8, v4

    sget-object v1, Lo/cB$asBinder$onPostMessage;->ICustomTabsCallback:Lo/cB$asBinder$onPostMessage;

    aput-object v1, v8, v5

    sget-object v1, Lo/cB$asBinder$onPostMessage;->asBinder:Lo/cB$asBinder$onPostMessage;

    aput-object v1, v8, v6

    aput-object v0, v8, v7

    sput-object v8, Lo/cB$asBinder$onPostMessage;->onRelationshipValidationResult:[Lo/cB$asBinder$onPostMessage;

    .line 34
    new-instance v0, Lo/cC;

    invoke-direct {v0}, Lo/cC;-><init>()V

    sput-object v0, Lo/cB$asBinder$onPostMessage;->ICustomTabsCallback$Stub:Lo/fc;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 24
    iput p3, p0, Lo/cB$asBinder$onPostMessage;->onTransact:I

    return-void
.end method

.method public static onPostMessage(I)Lo/cB$asBinder$onPostMessage;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 10
    :pswitch_0
    sget-object p0, Lo/cB$asBinder$onPostMessage;->asInterface:Lo/cB$asBinder$onPostMessage;

    return-object p0

    .line 9
    :pswitch_1
    sget-object p0, Lo/cB$asBinder$onPostMessage;->asBinder:Lo/cB$asBinder$onPostMessage;

    return-object p0

    .line 8
    :pswitch_2
    sget-object p0, Lo/cB$asBinder$onPostMessage;->ICustomTabsCallback:Lo/cB$asBinder$onPostMessage;

    return-object p0

    .line 7
    :pswitch_3
    sget-object p0, Lo/cB$asBinder$onPostMessage;->onNavigationEvent:Lo/cB$asBinder$onPostMessage;

    return-object p0

    .line 6
    :pswitch_4
    sget-object p0, Lo/cB$asBinder$onPostMessage;->onMessageChannelReady:Lo/cB$asBinder$onPostMessage;

    return-object p0

    .line 5
    :pswitch_5
    sget-object p0, Lo/cB$asBinder$onPostMessage;->onPostMessage:Lo/cB$asBinder$onPostMessage;

    return-object p0

    .line 4
    :pswitch_6
    sget-object p0, Lo/cB$asBinder$onPostMessage;->extraCallback:Lo/cB$asBinder$onPostMessage;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static onPostMessage()Lo/fI;
    .locals 1

    .line 12
    sget-object v0, Lo/cG;->extraCallback:Lo/fI;

    return-object v0
.end method

.method public static values()[Lo/cB$asBinder$onPostMessage;
    .locals 1

    .line 1
    sget-object v0, Lo/cB$asBinder$onPostMessage;->onRelationshipValidationResult:[Lo/cB$asBinder$onPostMessage;

    invoke-virtual {v0}, [Lo/cB$asBinder$onPostMessage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/cB$asBinder$onPostMessage;

    return-object v0
.end method


# virtual methods
.method public final extraCallback()I
    .locals 1

    .line 2
    iget v0, p0, Lo/cB$asBinder$onPostMessage;->onTransact:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 15
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    .line 16
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " number="

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    iget v1, p0, Lo/cB$asBinder$onPostMessage;->onTransact:I

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " name="

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {p0}, Lo/cB$asBinder$onPostMessage;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
