.class Lo/getThreads$extraCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getThreads;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "extraCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lo/AutoValue_CrashlyticsReport_Session_User$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lo/getThreads;


# direct methods
.method private constructor <init>(Lo/getThreads;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lo/getThreads$extraCallback;->this$0:Lo/getThreads;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lo/getThreads;Lo/getThreads$4;)V
    .locals 0

    .line 139
    invoke-direct {p0, p1}, Lo/getThreads$extraCallback;-><init>(Lo/getThreads;)V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lo/AutoValue_CrashlyticsReport_Session_User$Builder;",
            ">;"
        }
    .end annotation

    .line 143
    iget-object v0, p0, Lo/getThreads$extraCallback;->this$0:Lo/getThreads;

    .line 144
    invoke-static {v0}, Lo/getThreads;->access$100(Lo/getThreads;)Lo/populateFramesList;

    move-result-object v0

    invoke-virtual {v0}, Lo/populateFramesList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 145
    new-instance v1, Lo/getThreads$extraCallback$4;

    invoke-direct {v1, p0, v0}, Lo/getThreads$extraCallback$4;-><init>(Lo/getThreads$extraCallback;Ljava/util/Iterator;)V

    return-object v1
.end method
