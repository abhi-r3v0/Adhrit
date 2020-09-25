.class public final Lo/withRetryExponent;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/withMaxDelay;


# static fields
.field public static final onNavigationEvent:Lo/withMaxDelay;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    new-instance v0, Lo/withRetryExponent;

    invoke-direct {v0}, Lo/withRetryExponent;-><init>()V

    sput-object v0, Lo/withRetryExponent;->onNavigationEvent:Lo/withMaxDelay;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()Lo/retry;
    .locals 1

    .line 36
    sget-object v0, Lo/setMaxDelay;->onPostMessage:Lo/splitIntoFrames;

    return-object v0
.end method

.method public final close()V
    .locals 0

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 57
    const-class v0, Lo/withMaxDelay;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
