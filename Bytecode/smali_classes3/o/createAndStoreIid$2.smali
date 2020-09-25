.class final Lo/createAndStoreIid$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/createAndStoreIid;->interrupt(Lo/getCrashlyticsInstallId;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$repo:Lo/getCrashlyticsInstallId;


# direct methods
.method constructor <init>(Lo/getCrashlyticsInstallId;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lo/createAndStoreIid$2;->val$repo:Lo/getCrashlyticsInstallId;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 54
    iget-object v0, p0, Lo/createAndStoreIid$2;->val$repo:Lo/getCrashlyticsInstallId;

    invoke-virtual {v0}, Lo/getCrashlyticsInstallId;->interrupt()V

    return-void
.end method
