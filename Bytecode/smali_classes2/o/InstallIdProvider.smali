.class public interface abstract Lo/InstallIdProvider;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final defaultInstance:Lo/InstallIdProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    new-instance v0, Lo/InstallIdProvider$3;

    invoke-direct {v0}, Lo/InstallIdProvider$3;-><init>()V

    sput-object v0, Lo/InstallIdProvider;->defaultInstance:Lo/InstallIdProvider;

    return-void
.end method


# virtual methods
.method public abstract setDaemon(Ljava/lang/Thread;Z)V
.end method

.method public abstract setName(Ljava/lang/Thread;Ljava/lang/String;)V
.end method

.method public abstract setUncaughtExceptionHandler(Ljava/lang/Thread;Ljava/lang/Thread$UncaughtExceptionHandler;)V
.end method
