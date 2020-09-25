.class final Lcom/google/android/material/bottomsheet/BottomSheetBehavior$1;
.super Lo/rate$ICustomTabsCallback;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic onPostMessage:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;


# direct methods
.method constructor <init>(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)V
    .locals 0

    .line 1205
    iput-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$1;->onPostMessage:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    invoke-direct {p0}, Lo/rate$ICustomTabsCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final extraCallback(Landroid/view/View;I)I
    .locals 1

    .line 1318
    iget-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$1;->onPostMessage:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 5153
    iget-boolean v0, p1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->extraCallback:Z

    if-eqz v0, :cond_0

    iget p1, p1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->asInterface:I

    goto :goto_0

    :cond_0
    iget p1, p1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->onMessageChannelReady:I

    .line 1319
    :goto_0
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$1;->onPostMessage:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget-boolean v0, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ICustomTabsCallback$Stub:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$1;->onPostMessage:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget v0, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->warmup:I

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$1;->onPostMessage:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget v0, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->asBinder:I

    :goto_1
    if-ge p2, p1, :cond_2

    return p1

    :cond_2
    if-le p2, v0, :cond_3

    return v0

    :cond_3
    return p2
.end method

.method public final onMessageChannelReady(Landroid/view/View;I)Z
    .locals 4

    .line 1209
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$1;->onPostMessage:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget v0, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ICustomTabsService:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return v2

    .line 1212
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$1;->onPostMessage:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget-boolean v0, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->mayLaunchUrl:Z

    if-eqz v0, :cond_1

    return v2

    .line 1215
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$1;->onPostMessage:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget v0, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ICustomTabsService:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_3

    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$1;->onPostMessage:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget v0, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->extraCommand:I

    if-ne v0, p2, :cond_3

    .line 1216
    iget-object p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$1;->onPostMessage:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget-object p2, p2, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/ref/WeakReference;

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$1;->onPostMessage:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget-object p2, p2, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_3

    const/4 v0, -0x1

    .line 1217
    invoke-virtual {p2, v0}, Landroid/view/View;->canScrollVertically(I)Z

    move-result p2

    if-eqz p2, :cond_3

    return v2

    .line 1222
    :cond_3
    iget-object p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$1;->onPostMessage:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget-object p2, p2, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->getInterfaceDescriptor:Ljava/lang/ref/WeakReference;

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$1;->onPostMessage:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget-object p2, p2, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->getInterfaceDescriptor:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p2

    if-ne p2, p1, :cond_4

    return v1

    :cond_4
    return v2
.end method

.method public final onNavigationEvent(Landroid/view/View;)I
    .locals 0

    .line 1329
    iget-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$1;->onPostMessage:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget-boolean p1, p1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ICustomTabsCallback$Stub:Z

    if-eqz p1, :cond_0

    .line 1330
    iget-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$1;->onPostMessage:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget p1, p1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->warmup:I

    return p1

    .line 1332
    :cond_0
    iget-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$1;->onPostMessage:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget p1, p1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->asBinder:I

    return p1
.end method

.method public final onNavigationEvent(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1234
    iget-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$1;->onPostMessage:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    invoke-virtual {p1, v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ICustomTabsCallback(I)V

    :cond_0
    return-void
.end method

.method public final onNavigationEvent(Landroid/view/View;FF)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x4

    const/4 v2, 0x6

    const/4 v3, 0x3

    cmpg-float v4, p3, v0

    if-gez v4, :cond_2

    .line 1243
    iget-object p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$1;->onPostMessage:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 2075
    iget-boolean p2, p2, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->extraCallback:Z

    if-eqz p2, :cond_0

    .line 1244
    iget-object p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$1;->onPostMessage:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget p2, p2, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->asInterface:I

    :goto_0
    const/4 v1, 0x3

    goto/16 :goto_3

    .line 1247
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p2

    .line 1248
    iget-object p3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$1;->onPostMessage:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget p3, p3, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->onRelationshipValidationResult:I

    if-le p2, p3, :cond_1

    .line 1249
    iget-object p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$1;->onPostMessage:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget p2, p2, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->onRelationshipValidationResult:I

    :goto_1
    const/4 v1, 0x6

    goto/16 :goto_3

    .line 1252
    :cond_1
    iget-object p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$1;->onPostMessage:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget p2, p2, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->onMessageChannelReady:I

    goto :goto_0

    .line 1256
    :cond_2
    iget-object v4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$1;->onPostMessage:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget-boolean v4, v4, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ICustomTabsCallback$Stub:Z

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$1;->onPostMessage:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 1257
    invoke-virtual {v4, p1, p3}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->onNavigationEvent(Landroid/view/View;F)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1258
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v4

    iget-object v5, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$1;->onPostMessage:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget v5, v5, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->asBinder:I

    if-gt v4, v5, :cond_3

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_4

    .line 1261
    :cond_3
    iget-object p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$1;->onPostMessage:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget p2, p2, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->warmup:I

    const/4 v1, 0x5

    goto/16 :goto_3

    :cond_4
    cmpl-float v0, p3, v0

    if-eqz v0, :cond_7

    .line 1263
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p3

    cmpl-float p2, p2, p3

    if-lez p2, :cond_5

    goto :goto_2

    .line 1297
    :cond_5
    iget-object p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$1;->onPostMessage:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 4075
    iget-boolean p2, p2, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->extraCallback:Z

    if-nez p2, :cond_6

    .line 1302
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p2

    .line 1303
    iget-object p3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$1;->onPostMessage:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget p3, p3, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->onRelationshipValidationResult:I

    sub-int p3, p2, p3

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p3

    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$1;->onPostMessage:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget v0, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->asBinder:I

    sub-int/2addr p2, v0

    .line 1304
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    if-ge p3, p2, :cond_6

    .line 1305
    iget-object p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$1;->onPostMessage:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget p2, p2, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->onRelationshipValidationResult:I

    goto :goto_1

    .line 1308
    :cond_6
    iget-object p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$1;->onPostMessage:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget p2, p2, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->asBinder:I

    goto :goto_3

    .line 1266
    :cond_7
    :goto_2
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p2

    .line 1267
    iget-object p3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$1;->onPostMessage:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 3075
    iget-boolean p3, p3, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->extraCallback:Z

    if-eqz p3, :cond_9

    .line 1268
    iget-object p3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$1;->onPostMessage:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget p3, p3, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->asInterface:I

    sub-int p3, p2, p3

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p3

    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$1;->onPostMessage:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget v0, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->asBinder:I

    sub-int/2addr p2, v0

    .line 1269
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    if-ge p3, p2, :cond_8

    .line 1270
    iget-object p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$1;->onPostMessage:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget p2, p2, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->asInterface:I

    goto/16 :goto_0

    .line 1273
    :cond_8
    iget-object p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$1;->onPostMessage:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget p2, p2, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->asBinder:I

    goto :goto_3

    .line 1277
    :cond_9
    iget-object p3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$1;->onPostMessage:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget p3, p3, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->onRelationshipValidationResult:I

    if-ge p2, p3, :cond_b

    .line 1278
    iget-object p3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$1;->onPostMessage:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget p3, p3, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->asBinder:I

    sub-int p3, p2, p3

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p3

    if-ge p2, p3, :cond_a

    .line 1279
    iget-object p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$1;->onPostMessage:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget p2, p2, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->onMessageChannelReady:I

    goto/16 :goto_0

    .line 1282
    :cond_a
    iget-object p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$1;->onPostMessage:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget p2, p2, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->onRelationshipValidationResult:I

    goto/16 :goto_1

    .line 1286
    :cond_b
    iget-object p3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$1;->onPostMessage:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget p3, p3, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->onRelationshipValidationResult:I

    sub-int p3, p2, p3

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p3

    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$1;->onPostMessage:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget v0, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->asBinder:I

    sub-int/2addr p2, v0

    .line 1287
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    if-ge p3, p2, :cond_c

    .line 1288
    iget-object p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$1;->onPostMessage:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget p2, p2, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->onRelationshipValidationResult:I

    goto/16 :goto_1

    .line 1291
    :cond_c
    iget-object p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$1;->onPostMessage:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget p2, p2, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->asBinder:I

    .line 1313
    :goto_3
    iget-object p3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$1;->onPostMessage:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    const/4 v0, 0x1

    invoke-virtual {p3, p1, v1, p2, v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->extraCallback(Landroid/view/View;IIZ)V

    return-void
.end method

.method public final onNavigationEvent(Landroid/view/View;IIII)V
    .locals 0

    .line 1228
    iget-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$1;->onPostMessage:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    invoke-virtual {p1, p3}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->onPostMessage(I)V

    return-void
.end method

.method public final onPostMessage(Landroid/view/View;I)I
    .locals 0

    .line 1324
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p1

    return p1
.end method
