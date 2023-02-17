package com.chart;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.jfree.chart.ChartFactory;
import org.jfree.chart.ChartUtils;
import org.jfree.chart.JFreeChart;
import org.jfree.data.general.DefaultPieDataset;

@WebServlet("/PieChartServlet")
public class PieChartServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	
	DefaultPieDataset dataset = new DefaultPieDataset();
	
	dataset.setValue("Son-OGong", 63.2);
	dataset.setValue("Jer-PalGae", 37.2);
	dataset.setValue("Sa-OJung", 29.5);
	
	JFreeChart chart = ChartFactory.createPieChart("Energy Poser", dataset, true, true, true);
	
	ServletOutputStream out = response.getOutputStream();
	ChartUtils.writeChartAsJPEG(out, chart, 400, 400);
	
	}

}
