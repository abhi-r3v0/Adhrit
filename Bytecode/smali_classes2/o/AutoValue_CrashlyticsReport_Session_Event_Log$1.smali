.class public final Lo/AutoValue_CrashlyticsReport_Session_Event_Log$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# static fields
.field private static final EMPTY_DOCUMENT_MAP:Lo/populateFramesList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/populateFramesList<",
            "Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private final arg$1:Lo/BinaryImagesConverter$FileIdStrategy;

.field private final arg$2:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    invoke-static {}, Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;->comparator()Ljava/util/Comparator;

    move-result-object v0

    invoke-static {v0}, Lo/populateFramesList$onNavigationEvent;->emptyMap(Ljava/util/Comparator;)Lo/populateFramesList;

    move-result-object v0

    sput-object v0, Lo/AutoValue_CrashlyticsReport_Session_Event_Log$1;->EMPTY_DOCUMENT_MAP:Lo/populateFramesList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lo/BinaryImagesConverter$FileIdStrategy;Landroid/content/Intent;)V
    .locals 0

    .line 1000
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Log$1;->arg$1:Lo/BinaryImagesConverter$FileIdStrategy;

    iput-object p2, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Log$1;->arg$2:Landroid/content/Intent;

    return-void
.end method

.method public static emptyDocumentMap()Lo/populateFramesList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/populateFramesList<",
            "Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;",
            "Lo/setDiskUsed;",
            ">;"
        }
    .end annotation

    .line 28
    sget-object v0, Lo/AutoValue_CrashlyticsReport_Session_Event_Log$1;->EMPTY_DOCUMENT_MAP:Lo/populateFramesList;

    return-object v0
.end method

.method public static emptyMaybeDocumentMap()Lo/populateFramesList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/populateFramesList<",
            "Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;",
            "Lo/AutoValue_CrashlyticsReport_Session_User$Builder;",
            ">;"
        }
    .end annotation

    .line 34
    sget-object v0, Lo/AutoValue_CrashlyticsReport_Session_Event_Log$1;->EMPTY_DOCUMENT_MAP:Lo/populateFramesList;

    return-object v0
.end method

.method public static emptyVersionMap()Lo/populateFramesList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/populateFramesList<",
            "Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;",
            "Lo/withNdkPayload;",
            ">;"
        }
    .end annotation

    .line 40
    sget-object v0, Lo/AutoValue_CrashlyticsReport_Session_Event_Log$1;->EMPTY_DOCUMENT_MAP:Lo/populateFramesList;

    return-object v0
.end method


# virtual methods
.method public final onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 2

    .line 2000
    iget-object v0, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Log$1;->arg$1:Lo/BinaryImagesConverter$FileIdStrategy;

    iget-object v1, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Log$1;->arg$2:Landroid/content/Intent;

    invoke-virtual {v0, v1, p1}, Lo/BinaryImagesConverter$FileIdStrategy;->lambda$onStartCommand$1$EnhancedIntentService(Landroid/content/Intent;Lcom/google/android/gms/tasks/Task;)V

    return-void
.end method
