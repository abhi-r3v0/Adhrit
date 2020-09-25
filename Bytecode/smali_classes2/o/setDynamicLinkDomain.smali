.class public final Lo/setDynamicLinkDomain;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Executor;


# static fields
.field public static final $instance:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 3000
    new-instance v0, Lo/setDynamicLinkDomain;

    invoke-direct {v0}, Lo/setDynamicLinkDomain;-><init>()V

    sput-object v0, Lo/setDynamicLinkDomain;->$instance:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1000
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .locals 0

    .line 2000
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method
