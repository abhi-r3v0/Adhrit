.class final Lo/populateFrameData$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/firebase/FirebaseApp$extraCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/populateFrameData;->newPersistentConnection(Lo/getNamedThreadFactory;Lo/setCrashlyticsDataCollectionEnabled;Lo/grantDataCollectionPermission;Lo/getDataCollectionValueFromSharedPreferences$onPostMessage;)Lo/getDataCollectionValueFromSharedPreferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lo/populateFrameData;

.field final synthetic val$connection:Lo/getDataCollectionValueFromSharedPreferences;


# direct methods
.method constructor <init>(Lo/populateFrameData;Lo/getDataCollectionValueFromSharedPreferences;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lo/populateFrameData$1;->this$0:Lo/populateFrameData;

    iput-object p2, p0, Lo/populateFrameData$1;->val$connection:Lo/getDataCollectionValueFromSharedPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onBackgroundStateChanged(Z)V
    .locals 1

    const-string v0, "app_in_background"

    if-eqz p1, :cond_0

    .line 124
    iget-object p1, p0, Lo/populateFrameData$1;->val$connection:Lo/getDataCollectionValueFromSharedPreferences;

    invoke-interface {p1, v0}, Lo/getDataCollectionValueFromSharedPreferences;->interrupt(Ljava/lang/String;)V

    return-void

    .line 126
    :cond_0
    iget-object p1, p0, Lo/populateFrameData$1;->val$connection:Lo/getDataCollectionValueFromSharedPreferences;

    invoke-interface {p1, v0}, Lo/getDataCollectionValueFromSharedPreferences;->resume(Ljava/lang/String;)V

    return-void
.end method
