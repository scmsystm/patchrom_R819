.class public Landroid/text/TextPaint;
.super Landroid/graphics/Paint;
.source "TextPaint.java"


# instance fields
.field public baselineShift:I

.field public bgColor:I

.field public density:F

.field public drawableState:[I

.field public linkColor:I

.field public underlineColor:I

.field public underlineThickness:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/graphics/Paint;-><init>()V

    const/high16 v0, 0x3f80

    iput v0, p0, Landroid/text/TextPaint;->density:F

    const/4 v0, 0x0

    iput v0, p0, Landroid/text/TextPaint;->underlineColor:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "flags"

    .prologue
    invoke-direct {p0, p1}, Landroid/graphics/Paint;-><init>(I)V

    const/high16 v0, 0x3f80

    iput v0, p0, Landroid/text/TextPaint;->density:F

    const/4 v0, 0x0

    iput v0, p0, Landroid/text/TextPaint;->underlineColor:I

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Paint;)V
    .locals 1
    .parameter "p"

    .prologue
    invoke-direct {p0, p1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    const/high16 v0, 0x3f80

    iput v0, p0, Landroid/text/TextPaint;->density:F

    const/4 v0, 0x0

    iput v0, p0, Landroid/text/TextPaint;->underlineColor:I

    return-void
.end method


# virtual methods
.method public getFontMetricsInt(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;)I
    .locals 3
    .parameter "text"
    .parameter "fm"

    .prologue
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p2}, Landroid/graphics/Paint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2, p2}, Landroid/text/TextPaint;->getFontMetricsInt(Ljava/lang/String;IILandroid/graphics/Paint$FontMetricsInt;)I

    move-result v0

    goto :goto_0
.end method

.method public getFontMetricsInt(Ljava/lang/String;IILandroid/graphics/Paint$FontMetricsInt;)I
    .locals 3
    .parameter "text"
    .parameter "start"
    .parameter "end"
    .parameter "fm"

    .prologue
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .local v0, bounds:Landroid/graphics/Rect;
    if-gez p2, :cond_0

    const/4 p2, 0x0

    :cond_0
    if-gez p3, :cond_1

    const/4 p3, 0x0

    :cond_1
    if-nez p1, :cond_5

    const/4 p3, 0x0

    move p2, p3

    :cond_2
    :goto_0
    invoke-super {p0, p1, p2, p3, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    invoke-super {p0, p4}, Landroid/graphics/Paint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget v2, p4, Landroid/graphics/Paint$FontMetricsInt;->top:I

    if-ge v1, v2, :cond_3

    iget v1, v0, Landroid/graphics/Rect;->top:I

    iput v1, p4, Landroid/graphics/Paint$FontMetricsInt;->top:I

    iget v1, v0, Landroid/graphics/Rect;->top:I

    iput v1, p4, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    :cond_3
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget v2, p4, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    if-le v1, v2, :cond_4

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iput v1, p4, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iput v1, p4, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    :cond_4
    iget v1, p4, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget v2, p4, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int/2addr v1, v2

    iget v2, p4, Landroid/graphics/Paint$FontMetricsInt;->leading:I

    add-int/2addr v1, v2

    return v1

    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, p3, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p3

    goto :goto_0
.end method

.method public getFontMetricsInt([CLandroid/graphics/Paint$FontMetricsInt;)I
    .locals 3
    .parameter "text"
    .parameter "fm"

    .prologue
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0, p2}, Landroid/graphics/Paint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    move-result v0

    :goto_0
    return v0

    :cond_1
    invoke-static {p1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    array-length v2, p1

    invoke-virtual {p0, v0, v1, v2, p2}, Landroid/text/TextPaint;->getFontMetricsInt(Ljava/lang/String;IILandroid/graphics/Paint$FontMetricsInt;)I

    move-result v0

    goto :goto_0
.end method

.method public set(Landroid/text/TextPaint;)V
    .locals 1
    .parameter "tp"

    .prologue
    invoke-super {p0, p1}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    iget v0, p1, Landroid/text/TextPaint;->bgColor:I

    iput v0, p0, Landroid/text/TextPaint;->bgColor:I

    iget v0, p1, Landroid/text/TextPaint;->baselineShift:I

    iput v0, p0, Landroid/text/TextPaint;->baselineShift:I

    iget v0, p1, Landroid/text/TextPaint;->linkColor:I

    iput v0, p0, Landroid/text/TextPaint;->linkColor:I

    iget-object v0, p1, Landroid/text/TextPaint;->drawableState:[I

    iput-object v0, p0, Landroid/text/TextPaint;->drawableState:[I

    iget v0, p1, Landroid/text/TextPaint;->density:F

    iput v0, p0, Landroid/text/TextPaint;->density:F

    iget v0, p1, Landroid/text/TextPaint;->underlineColor:I

    iput v0, p0, Landroid/text/TextPaint;->underlineColor:I

    iget v0, p1, Landroid/text/TextPaint;->underlineThickness:F

    iput v0, p0, Landroid/text/TextPaint;->underlineThickness:F

    return-void
.end method

.method public setUnderlineText(IF)V
    .locals 0
    .parameter "color"
    .parameter "thickness"

    .prologue
    iput p1, p0, Landroid/text/TextPaint;->underlineColor:I

    iput p2, p0, Landroid/text/TextPaint;->underlineThickness:F

    return-void
.end method
