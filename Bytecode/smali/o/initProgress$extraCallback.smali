.class public interface abstract Lo/initProgress$extraCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/initProgress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "extraCallback"
.end annotation


# static fields
.field public static final onNavigationEvent:Lo/initProgress$extraCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 328
    new-instance v0, Lo/initProgress$extraCallback$3;

    invoke-direct {v0}, Lo/initProgress$extraCallback$3;-><init>()V

    .line 351
    sput-object v0, Lo/initProgress$extraCallback;->onNavigationEvent:Lo/initProgress$extraCallback;

    return-void
.end method


# virtual methods
.method public abstract extraCallback(Ljava/lang/Throwable;)V
.end method
