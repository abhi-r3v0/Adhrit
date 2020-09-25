.class final enum Lo/lambda$getToken$1$extraCallback;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/lambda$getToken$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "extraCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/lambda$getToken$1$extraCallback;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ICustomTabsCallback:Lo/lambda$getToken$1$extraCallback;

.field public static final enum onMessageChannelReady:Lo/lambda$getToken$1$extraCallback;

.field public static final enum onPostMessage:Lo/lambda$getToken$1$extraCallback;

.field private static final synthetic onTransact:[Lo/lambda$getToken$1$extraCallback;


# instance fields
.field final ICustomTabsCallback$Stub:I

.field final extraCallback:I

.field final onNavigationEvent:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 123
    new-instance v6, Lo/lambda$getToken$1$extraCallback;

    const-string v1, "MICRO"

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/16 v4, 0x60

    const/16 v5, 0x60

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lo/lambda$getToken$1$extraCallback;-><init>(Ljava/lang/String;IIII)V

    sput-object v6, Lo/lambda$getToken$1$extraCallback;->onPostMessage:Lo/lambda$getToken$1$extraCallback;

    .line 124
    new-instance v0, Lo/lambda$getToken$1$extraCallback;

    const-string v8, "MINI"

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/16 v11, 0x200

    const/16 v12, 0x180

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lo/lambda$getToken$1$extraCallback;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lo/lambda$getToken$1$extraCallback;->ICustomTabsCallback:Lo/lambda$getToken$1$extraCallback;

    .line 125
    new-instance v0, Lo/lambda$getToken$1$extraCallback;

    const-string v2, "FULL"

    const/4 v3, 0x2

    const/4 v4, 0x2

    const/4 v5, -0x1

    const/4 v6, -0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lo/lambda$getToken$1$extraCallback;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lo/lambda$getToken$1$extraCallback;->onMessageChannelReady:Lo/lambda$getToken$1$extraCallback;

    const/4 v1, 0x3

    new-array v1, v1, [Lo/lambda$getToken$1$extraCallback;

    .line 122
    sget-object v2, Lo/lambda$getToken$1$extraCallback;->onPostMessage:Lo/lambda$getToken$1$extraCallback;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lo/lambda$getToken$1$extraCallback;->ICustomTabsCallback:Lo/lambda$getToken$1$extraCallback;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    aput-object v0, v1, v2

    sput-object v1, Lo/lambda$getToken$1$extraCallback;->onTransact:[Lo/lambda$getToken$1$extraCallback;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIII)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)V"
        }
    .end annotation

    .line 131
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 132
    iput p3, p0, Lo/lambda$getToken$1$extraCallback;->extraCallback:I

    .line 133
    iput p4, p0, Lo/lambda$getToken$1$extraCallback;->onNavigationEvent:I

    .line 134
    iput p5, p0, Lo/lambda$getToken$1$extraCallback;->ICustomTabsCallback$Stub:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lo/lambda$getToken$1$extraCallback;
    .locals 1

    .line 122
    const-class v0, Lo/lambda$getToken$1$extraCallback;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lo/lambda$getToken$1$extraCallback;

    return-object p0
.end method

.method public static values()[Lo/lambda$getToken$1$extraCallback;
    .locals 1

    .line 122
    sget-object v0, Lo/lambda$getToken$1$extraCallback;->onTransact:[Lo/lambda$getToken$1$extraCallback;

    invoke-virtual {v0}, [Lo/lambda$getToken$1$extraCallback;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/lambda$getToken$1$extraCallback;

    return-object v0
.end method
