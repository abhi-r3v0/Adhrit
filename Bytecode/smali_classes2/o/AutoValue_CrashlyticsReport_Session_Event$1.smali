.class public final Lo/AutoValue_CrashlyticsReport_Session_Event$1;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final batchId:I

.field private final changes:Lo/populateFramesList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/populateFramesList<",
            "Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;",
            "Lo/AutoValue_CrashlyticsReport_Session_User$Builder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(ILo/populateFramesList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lo/populateFramesList<",
            "Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;",
            "Lo/AutoValue_CrashlyticsReport_Session_User$Builder;",
            ">;)V"
        }
    .end annotation

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput p1, p0, Lo/AutoValue_CrashlyticsReport_Session_Event$1;->batchId:I

    .line 29
    iput-object p2, p0, Lo/AutoValue_CrashlyticsReport_Session_Event$1;->changes:Lo/populateFramesList;

    return-void
.end method


# virtual methods
.method public final getBatchId()I
    .locals 1

    .line 33
    iget v0, p0, Lo/AutoValue_CrashlyticsReport_Session_Event$1;->batchId:I

    return v0
.end method

.method public final getChanges()Lo/populateFramesList;
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

    .line 37
    iget-object v0, p0, Lo/AutoValue_CrashlyticsReport_Session_Event$1;->changes:Lo/populateFramesList;

    return-object v0
.end method
