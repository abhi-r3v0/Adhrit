.class public final Lo/shortCircuitingReverseOrderTraversal$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/shortCircuitingReverseOrderTraversal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ICustomTabsCallback"
.end annotation


# static fields
.field public static final synthetic extraCallback:Z


# instance fields
.field public final onMessageChannelReady:J

.field public final synthetic onPostMessage:Lo/shortCircuitingReverseOrderTraversal;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    const-class v0, Lo/shortCircuitingReverseOrderTraversal;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lo/shortCircuitingReverseOrderTraversal$ICustomTabsCallback;->extraCallback:Z

    return-void
.end method

.method private constructor <init>(Lo/shortCircuitingReverseOrderTraversal;J)V
    .locals 0

    .line 51
    iput-object p1, p0, Lo/shortCircuitingReverseOrderTraversal$ICustomTabsCallback;->onPostMessage:Lo/shortCircuitingReverseOrderTraversal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-wide p2, p0, Lo/shortCircuitingReverseOrderTraversal$ICustomTabsCallback;->onMessageChannelReady:J

    return-void
.end method

.method public synthetic constructor <init>(Lo/shortCircuitingReverseOrderTraversal;JB)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2, p3}, Lo/shortCircuitingReverseOrderTraversal$ICustomTabsCallback;-><init>(Lo/shortCircuitingReverseOrderTraversal;J)V

    return-void
.end method
