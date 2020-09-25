.class public final enum Lo/warnOnListenerWarnings;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/warnOnListenerWarnings;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final enum ICustomTabsCallback:Lo/warnOnListenerWarnings;

.field public static final enum extraCallback:Lo/warnOnListenerWarnings;

.field private static final synthetic onNavigationEvent:[Lo/warnOnListenerWarnings;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 31
    new-instance v0, Lo/warnOnListenerWarnings;

    const/4 v1, 0x0

    const-string v2, "TLS"

    invoke-direct {v0, v2, v1}, Lo/warnOnListenerWarnings;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/warnOnListenerWarnings;->extraCallback:Lo/warnOnListenerWarnings;

    .line 37
    new-instance v0, Lo/warnOnListenerWarnings;

    const/4 v2, 0x1

    const-string v3, "PLAINTEXT"

    invoke-direct {v0, v3, v2}, Lo/warnOnListenerWarnings;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/warnOnListenerWarnings;->ICustomTabsCallback:Lo/warnOnListenerWarnings;

    const/4 v3, 0x2

    new-array v3, v3, [Lo/warnOnListenerWarnings;

    .line 26
    sget-object v4, Lo/warnOnListenerWarnings;->extraCallback:Lo/warnOnListenerWarnings;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lo/warnOnListenerWarnings;->onNavigationEvent:[Lo/warnOnListenerWarnings;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lo/warnOnListenerWarnings;
    .locals 1

    .line 26
    const-class v0, Lo/warnOnListenerWarnings;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lo/warnOnListenerWarnings;

    return-object p0
.end method

.method public static values()[Lo/warnOnListenerWarnings;
    .locals 1

    .line 26
    sget-object v0, Lo/warnOnListenerWarnings;->onNavigationEvent:[Lo/warnOnListenerWarnings;

    invoke-virtual {v0}, [Lo/warnOnListenerWarnings;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/warnOnListenerWarnings;

    return-object v0
.end method
