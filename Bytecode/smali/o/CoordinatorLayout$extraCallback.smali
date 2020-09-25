.class final enum Lo/CoordinatorLayout$extraCallback;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/CoordinatorLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "extraCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/CoordinatorLayout$extraCallback;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ICustomTabsCallback:Lo/CoordinatorLayout$extraCallback;

.field public static final enum extraCallback:Lo/CoordinatorLayout$extraCallback;

.field public static final enum onMessageChannelReady:Lo/CoordinatorLayout$extraCallback;

.field public static final enum onNavigationEvent:Lo/CoordinatorLayout$extraCallback;

.field public static final enum onPostMessage:Lo/CoordinatorLayout$extraCallback;

.field private static final synthetic onRelationshipValidationResult:[Lo/CoordinatorLayout$extraCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 224
    new-instance v0, Lo/CoordinatorLayout$extraCallback;

    const/4 v1, 0x0

    const-string v2, "DIGITS_0"

    invoke-direct {v0, v2, v1}, Lo/CoordinatorLayout$extraCallback;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/CoordinatorLayout$extraCallback;->onPostMessage:Lo/CoordinatorLayout$extraCallback;

    .line 225
    new-instance v0, Lo/CoordinatorLayout$extraCallback;

    const/4 v2, 0x1

    const-string v3, "DIGITS_2"

    invoke-direct {v0, v3, v2}, Lo/CoordinatorLayout$extraCallback;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/CoordinatorLayout$extraCallback;->extraCallback:Lo/CoordinatorLayout$extraCallback;

    .line 226
    new-instance v0, Lo/CoordinatorLayout$extraCallback;

    const/4 v3, 0x2

    const-string v4, "DIGITS_3"

    invoke-direct {v0, v4, v3}, Lo/CoordinatorLayout$extraCallback;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/CoordinatorLayout$extraCallback;->onMessageChannelReady:Lo/CoordinatorLayout$extraCallback;

    .line 227
    new-instance v0, Lo/CoordinatorLayout$extraCallback;

    const/4 v4, 0x3

    const-string v5, "DIGITS_07"

    invoke-direct {v0, v5, v4}, Lo/CoordinatorLayout$extraCallback;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/CoordinatorLayout$extraCallback;->onNavigationEvent:Lo/CoordinatorLayout$extraCallback;

    .line 228
    new-instance v0, Lo/CoordinatorLayout$extraCallback;

    const/4 v5, 0x4

    const-string v6, "DIGITS_NO"

    invoke-direct {v0, v6, v5}, Lo/CoordinatorLayout$extraCallback;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/CoordinatorLayout$extraCallback;->ICustomTabsCallback:Lo/CoordinatorLayout$extraCallback;

    const/4 v6, 0x5

    new-array v6, v6, [Lo/CoordinatorLayout$extraCallback;

    .line 223
    sget-object v7, Lo/CoordinatorLayout$extraCallback;->onPostMessage:Lo/CoordinatorLayout$extraCallback;

    aput-object v7, v6, v1

    sget-object v1, Lo/CoordinatorLayout$extraCallback;->extraCallback:Lo/CoordinatorLayout$extraCallback;

    aput-object v1, v6, v2

    sget-object v1, Lo/CoordinatorLayout$extraCallback;->onMessageChannelReady:Lo/CoordinatorLayout$extraCallback;

    aput-object v1, v6, v3

    sget-object v1, Lo/CoordinatorLayout$extraCallback;->onNavigationEvent:Lo/CoordinatorLayout$extraCallback;

    aput-object v1, v6, v4

    aput-object v0, v6, v5

    sput-object v6, Lo/CoordinatorLayout$extraCallback;->onRelationshipValidationResult:[Lo/CoordinatorLayout$extraCallback;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 223
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lo/CoordinatorLayout$extraCallback;
    .locals 1

    .line 223
    const-class v0, Lo/CoordinatorLayout$extraCallback;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lo/CoordinatorLayout$extraCallback;

    return-object p0
.end method

.method public static values()[Lo/CoordinatorLayout$extraCallback;
    .locals 1

    .line 223
    sget-object v0, Lo/CoordinatorLayout$extraCallback;->onRelationshipValidationResult:[Lo/CoordinatorLayout$extraCallback;

    invoke-virtual {v0}, [Lo/CoordinatorLayout$extraCallback;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/CoordinatorLayout$extraCallback;

    return-object v0
.end method
