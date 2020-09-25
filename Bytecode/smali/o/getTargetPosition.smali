.class public final Lo/getTargetPosition;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/getTargetPosition$onPostMessage;,
        Lo/getTargetPosition$onMessageChannelReady;
    }
.end annotation


# static fields
.field public static final ICustomTabsCallback:Lo/getTargetPosition;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 3000
    new-instance v0, Lo/getTargetPosition;

    invoke-direct {v0}, Lo/getTargetPosition;-><init>()V

    sput-object v0, Lo/getTargetPosition;->ICustomTabsCallback:Lo/getTargetPosition;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1000
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    return-void
.end method
