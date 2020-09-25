.class final enum Lo/removeLottieOnCompositionLoadedListener$ICustomTabsCallback;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/removeLottieOnCompositionLoadedListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "ICustomTabsCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/removeLottieOnCompositionLoadedListener$ICustomTabsCallback;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ICustomTabsCallback:Lo/removeLottieOnCompositionLoadedListener$ICustomTabsCallback;

.field public static final enum extraCallback:Lo/removeLottieOnCompositionLoadedListener$ICustomTabsCallback;

.field public static final enum onMessageChannelReady:Lo/removeLottieOnCompositionLoadedListener$ICustomTabsCallback;

.field private static final synthetic onNavigationEvent:[Lo/removeLottieOnCompositionLoadedListener$ICustomTabsCallback;

.field public static final enum onPostMessage:Lo/removeLottieOnCompositionLoadedListener$ICustomTabsCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 126
    new-instance v0, Lo/removeLottieOnCompositionLoadedListener$ICustomTabsCallback;

    const/4 v1, 0x0

    const-string v2, "REQUIRED"

    invoke-direct {v0, v2, v1}, Lo/removeLottieOnCompositionLoadedListener$ICustomTabsCallback;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/removeLottieOnCompositionLoadedListener$ICustomTabsCallback;->onPostMessage:Lo/removeLottieOnCompositionLoadedListener$ICustomTabsCallback;

    .line 129
    new-instance v0, Lo/removeLottieOnCompositionLoadedListener$ICustomTabsCallback;

    const/4 v2, 0x1

    const-string v3, "NOT_REQUIRED"

    invoke-direct {v0, v3, v2}, Lo/removeLottieOnCompositionLoadedListener$ICustomTabsCallback;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/removeLottieOnCompositionLoadedListener$ICustomTabsCallback;->ICustomTabsCallback:Lo/removeLottieOnCompositionLoadedListener$ICustomTabsCallback;

    .line 132
    new-instance v0, Lo/removeLottieOnCompositionLoadedListener$ICustomTabsCallback;

    const/4 v3, 0x2

    const-string v4, "SKIP"

    invoke-direct {v0, v4, v3}, Lo/removeLottieOnCompositionLoadedListener$ICustomTabsCallback;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/removeLottieOnCompositionLoadedListener$ICustomTabsCallback;->extraCallback:Lo/removeLottieOnCompositionLoadedListener$ICustomTabsCallback;

    .line 135
    new-instance v0, Lo/removeLottieOnCompositionLoadedListener$ICustomTabsCallback;

    const/4 v4, 0x3

    const-string v5, "ABORT"

    invoke-direct {v0, v5, v4}, Lo/removeLottieOnCompositionLoadedListener$ICustomTabsCallback;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/removeLottieOnCompositionLoadedListener$ICustomTabsCallback;->onMessageChannelReady:Lo/removeLottieOnCompositionLoadedListener$ICustomTabsCallback;

    const/4 v5, 0x4

    new-array v5, v5, [Lo/removeLottieOnCompositionLoadedListener$ICustomTabsCallback;

    .line 124
    sget-object v6, Lo/removeLottieOnCompositionLoadedListener$ICustomTabsCallback;->onPostMessage:Lo/removeLottieOnCompositionLoadedListener$ICustomTabsCallback;

    aput-object v6, v5, v1

    sget-object v1, Lo/removeLottieOnCompositionLoadedListener$ICustomTabsCallback;->ICustomTabsCallback:Lo/removeLottieOnCompositionLoadedListener$ICustomTabsCallback;

    aput-object v1, v5, v2

    sget-object v1, Lo/removeLottieOnCompositionLoadedListener$ICustomTabsCallback;->extraCallback:Lo/removeLottieOnCompositionLoadedListener$ICustomTabsCallback;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    sput-object v5, Lo/removeLottieOnCompositionLoadedListener$ICustomTabsCallback;->onNavigationEvent:[Lo/removeLottieOnCompositionLoadedListener$ICustomTabsCallback;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 124
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lo/removeLottieOnCompositionLoadedListener$ICustomTabsCallback;
    .locals 1

    .line 124
    const-class v0, Lo/removeLottieOnCompositionLoadedListener$ICustomTabsCallback;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lo/removeLottieOnCompositionLoadedListener$ICustomTabsCallback;

    return-object p0
.end method

.method public static values()[Lo/removeLottieOnCompositionLoadedListener$ICustomTabsCallback;
    .locals 1

    .line 124
    sget-object v0, Lo/removeLottieOnCompositionLoadedListener$ICustomTabsCallback;->onNavigationEvent:[Lo/removeLottieOnCompositionLoadedListener$ICustomTabsCallback;

    invoke-virtual {v0}, [Lo/removeLottieOnCompositionLoadedListener$ICustomTabsCallback;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/removeLottieOnCompositionLoadedListener$ICustomTabsCallback;

    return-object v0
.end method
