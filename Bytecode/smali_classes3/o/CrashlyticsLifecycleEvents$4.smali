.class Lo/CrashlyticsLifecycleEvents$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/CrashlyticsLifecycleEvents;->getChildren()Ljava/lang/Iterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lo/CrashlyticsLifecycleEvents;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lo/CrashlyticsLifecycleEvents;

.field final synthetic val$iter:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Lo/CrashlyticsLifecycleEvents;Ljava/util/Iterator;)V
    .locals 0

    .line 269
    iput-object p1, p0, Lo/CrashlyticsLifecycleEvents$4;->this$0:Lo/CrashlyticsLifecycleEvents;

    iput-object p2, p0, Lo/CrashlyticsLifecycleEvents$4;->val$iter:Ljava/util/Iterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lo/CrashlyticsLifecycleEvents;",
            ">;"
        }
    .end annotation

    .line 273
    new-instance v0, Lo/CrashlyticsLifecycleEvents$4$1;

    invoke-direct {v0, p0}, Lo/CrashlyticsLifecycleEvents$4$1;-><init>(Lo/CrashlyticsLifecycleEvents$4;)V

    return-object v0
.end method
