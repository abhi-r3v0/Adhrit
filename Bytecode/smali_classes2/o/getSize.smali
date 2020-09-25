.class interface abstract Lo/getSize;
.super Ljava/lang/Object;
.source ""


# virtual methods
.method public abstract add(Lo/AutoValue_CrashlyticsReport_Session_User$Builder;Lo/withNdkPayload;)V
.end method

.method public abstract get(Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;)Lo/AutoValue_CrashlyticsReport_Session_User$Builder;
.end method

.method public abstract getAll(Ljava/lang/Iterable;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;",
            ">;)",
            "Ljava/util/Map<",
            "Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;",
            "Lo/AutoValue_CrashlyticsReport_Session_User$Builder;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAllDocumentsMatchingQuery(Lo/AutoValue_CrashlyticsReport_Session_Application;Lo/withNdkPayload;)Lo/populateFramesList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/AutoValue_CrashlyticsReport_Session_Application;",
            "Lo/withNdkPayload;",
            ")",
            "Lo/populateFramesList<",
            "Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;",
            "Lo/setDiskUsed;",
            ">;"
        }
    .end annotation
.end method

.method public abstract remove(Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;)V
.end method
